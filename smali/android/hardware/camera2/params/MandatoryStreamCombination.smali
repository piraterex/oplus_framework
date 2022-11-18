.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    }
.end annotation


# static fields
.field private static final blacklist STREAM_USE_CASE_PREVIEW:J = 0x1L

.field private static final blacklist STREAM_USE_CASE_PREVIEW_VIDEO_STILL:J = 0x4L

.field private static final blacklist STREAM_USE_CASE_RECORD:J = 0x3L

.field private static final blacklist STREAM_USE_CASE_STILL_CAPTURE:J = 0x2L

.field private static final blacklist STREAM_USE_CASE_VIDEO_CALL:J = 0x5L

.field private static final blacklist TAG:Ljava/lang/String; = "MandatoryStreamCombination"

.field private static blacklist s10BitOutputStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sPreviewStabilizedStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionPRIVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionYUVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;


# instance fields
.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mIsReprocessable:Z

.field private final blacklist mStreamsInformation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgets10BitOutputStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->s10BitOutputStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBurstCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsConcurrentDepthOnlyStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFullCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFullPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFullYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLegacyCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLevel3Combinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLevel3PrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLevel3YUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLimitedCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLimitedPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLimitedYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsPreviewStabilizedStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sPreviewStabilizedStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRAWPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRAWYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRawCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionPRIVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionYUVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 16

    .line 518
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v7, 0x22

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Simple preview, GPU video processing, or no-preview video recording"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v9, 0x100

    invoke-direct {v5, v9, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v4, v6

    const-string v5, "No-viewfinder still image capture"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v10, 0x23

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v4, v6

    const-string v5, "In-application video/image processing"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v5, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v5, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v5, v3

    const-string v8, "Standard still imaging"

    invoke-direct {v2, v5, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v8, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v8, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v8, v3

    const-string v11, "In-app processing plus still capture"

    invoke-direct {v2, v8, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v11, v6

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v11, v3

    const-string v12, "Standard recording"

    invoke-direct {v2, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v12, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v3

    const-string v13, "Preview plus in-app processing"

    invoke-direct {v2, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v12, 0x6

    aput-object v2, v1, v12

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "Still capture plus in-app processing"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v13, 0x7

    aput-object v2, v1, v13

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 551
    new-array v1, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v14, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v14, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v14, v3

    const-string v13, "High-resolution video recording with preview"

    invoke-direct {v2, v14, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "High-resolution in-app video processing with preview"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "Two-input in-app video processing"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "High-resolution recording with video snapshot"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "High-resolution in-app processing with video snapshot"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "Two-input in-app processing with still capture"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v11

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 581
    new-array v1, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "Maximum-resolution GPU processing with preview"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    const-string v14, "Maximum-resolution in-app processing with preview"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v10, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v13, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v0, v13, v3

    const-string v0, "Maximum-resolution two-input in-app processsing"

    invoke-direct {v2, v13, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 596
    new-array v0, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "Maximum-resolution GPU processing with preview"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    invoke-direct {v1, v2, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "Maximum-resolution two-input in-app processsing"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Video recording with maximum-size video snapshot"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Standard video recording plus maximum-resolution in-app processing"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Preview plus two-input maximum-resolution in-app processing"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v11

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 626
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v12, 0x20

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    const-string v13, "No-preview DNG capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "Standard DNG capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "In-app processing plus DNG capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Video recording with DNG capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Preview with in-app processing and DNG capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v8

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Two-input in-app processing plus DNG capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v11

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "Still capture with simultaneous JPEG and DNG"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    const-string v13, "In-app processing with simultaneous JPEG and DNG"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 665
    new-array v0, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v5

    const-string v13, "In-app viewfinder analysis with dynamic selection of output format"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v5

    const-string v13, "In-app viewfinder analysis with dynamic selection of output format"

    invoke-direct {v1, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 680
    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "No-viewfinder still image reprocessing"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL(Zero-Shutter-Lag) still imaging"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL still and in-app processing imaging"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL in-app processing with still capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 703
    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "No-viewfinder still image reprocessing"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL(Zero-Shutter-Lag) still imaging"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL still and in-app processing imaging"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL in-app processing with still capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 726
    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "High-resolution ZSL in-app video processing with regular preview"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Maximum-resolution ZSL in-app processing with regular preview"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Maximum-resolution two-input ZSL in-app processing"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL still capture and in-app processing"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 750
    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Maximum-resolution multi-frame image fusion in-app processing with regular preview"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Maximum-resolution multi-frame image fusion two-input in-app processing"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "High-resolution ZSL in-app video processing with regular preview"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "ZSL still capture and in-app processing"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 773
    new-array v0, v11, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL in-app processing and DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL in-app processing and preview with DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL two-input in-app processing and DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL still capture and preview with DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL in-app processing with still capture and DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v8

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 805
    new-array v0, v11, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL in-app processing and DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL in-app processing and preview with DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL two-input in-app processing and DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL still capture and preview with DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "Mutually exclusive ZSL in-app processing with still capture and DNG capture"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v8

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 837
    new-array v0, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v5

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "In-app viewfinder analysis with ZSL, RAW, and JPEG reprocessing output"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 847
    new-array v0, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "In-app viewfinder analysis with ZSL and RAW"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v12, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v4

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v5

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v15, "In-app viewfinder analysis with ZSL, RAW, and JPEG reprocessing output"

    invoke-direct {v1, v2, v15, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 863
    const/16 v0, 0x9

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v10, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v13, v6

    const-string v0, "In-app video / image processing"

    invoke-direct {v2, v13, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    const-string/jumbo v13, "preview / preview to GPU"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    const-string v13, "No view-finder still image capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "Two-input in app video / image processing"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "High resolution video recording with preview"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v8

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "In-app video / image processing with preview"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v11

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "In-app video / image processing with preview"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "Standard stil image capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v3

    const-string v13, "Standard still image capture"

    invoke-direct {v0, v2, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 899
    new-array v0, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const v11, 0x44363159

    invoke-direct {v13, v11, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v2, v6

    const-string v11, "Depth capture for mesh based object rendering"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 905
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "Ultra high resolution YUV image capture with preview"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "Ultra high resolution RAW_SENSOR image capture with preview"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "Ultra high resolution JPEG image capture with preview"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "No-viewfinder Ultra high resolution YUV image capture with image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "No-viewfinder Ultra high resolution RAW_SENSOR image capture with image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "No-viewfinder Ultra high resolution JPEG image capture with image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution YUV image capture with preview + app-based image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution RAW image capture with preview + app-based image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution JPEG image capture with preview + app-based image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution YUV image capture with preview + app-based image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution RAW image capture with preview + app-based image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution JPEG image capture with preview + app-based image analysis"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution YUV image capture with preview + default"

    invoke-direct {v1, v2, v11, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution RAW image capture with preview + default"

    invoke-direct {v1, v2, v11, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "Ultra high resolution JPEG capture with preview + default"

    invoke-direct {v1, v2, v11, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 989
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "In-app RAW remosaic reprocessing with separate preview"

    invoke-direct {v0, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "In-app RAW remosaic reprocessing with in-app image analysis"

    invoke-direct {v0, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "In-app RAW -> JPEG reprocessing with separate preview"

    invoke-direct {v0, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "In-app RAW -> YUV reprocessing with separate preview"

    invoke-direct {v0, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "In-app RAW -> JPEG reprocessing with in-app image analysis"

    invoke-direct {v0, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v0, v1, v8

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "In-app RAW -> YUV reprocessing with in-app image analysis"

    invoke-direct {v0, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1023
    new-array v0, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Ultra high resolution YUV -> JPEG reprocessing with separate preview"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Ultra high resolution YUV -> JPEG reprocessing with in-app image analysis"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Ultra high resolution YUV -> YUV reprocessing with separate preview"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Ultra high resolution YUV -> YUV reprocessing with in-app image analysis"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionYUVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1049
    new-array v0, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Ultra high resolution PRIVATE -> JPEG reprocessing with separate preview"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const-string v12, "Ultra high resolution PRIVATE -> JPEG reprocessing with in-app image analysis"

    invoke-direct {v1, v2, v12, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionPRIVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1062
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    const-string v11, "Simple preview, GPU video processing, or no-preview video recording"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v6

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v13, 0x36

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    const-string v11, "In-application video/image processing"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "Standard still imaging"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    invoke-direct {v0, v2, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "Maximum-resolution two-input in-app processing"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v8

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    const-string v11, "High-resolution video recording with preview"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "High-resolution recording with in-app snapshot"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "High-resolution recording with video snapshot"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->s10BitOutputStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1097
    const/16 v0, 0x1c

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v13, 0x1

    invoke-direct {v11, v7, v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple preview"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple in-application image processing"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v13, 0x3

    invoke-direct {v11, v7, v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple video recording"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple in-application video processing"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v13, 0x2

    invoke-direct {v11, v9, v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple JPEG still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple YUV still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x4

    invoke-direct {v11, v7, v12, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Multi-purpose stream for preview, video and still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Multi-purpose YUV stream for preview, video and still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x5

    invoke-direct {v11, v7, v12, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple video call"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    const-string v11, "Simple YUV video call"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x1

    invoke-direct {v11, v7, v12, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with JPEG still image capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with YUV still image capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x3

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with video recording"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x3

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with in-application video processing"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with in-application image processing"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x5

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with video call"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x5

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Preview with YUV video call"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x4

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Multi-purpose stream with JPEG still capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x4

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Multi-purpose stream with YUV still capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x4

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Multi-purpose YUV stream with JPEG still capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x4

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "Multi-purpose YUV stream with YUV still capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    const-string v8, "YUV and JPEG concurrent still image capture (for testing)"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x3

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v4

    const-string v8, "Preview, video record and JPEG video snapshot"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x3

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v4

    const-string v8, "Preview, video record and YUV video snapshot"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x3

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v4

    const-string v8, "Preview, in-application video processing and JPEG video snapshot"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x3

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v4

    const-string v8, "Preview, in-application video processing and YUV video snapshot"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v4

    const-string v8, "Preview, in-application image processing, and JPEG still image capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v11, 0x1

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v3

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v8, v2, v4

    const-string v8, "Preview, in-application image processing, and YUV still image capture"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1265
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    const-string v8, "Stabilized preview, GPU video processing, or no-preview stabilized recording"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    const-string v8, "Stabilized preview, GPU video processing, or no-preview stabilized recording"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v8, v11, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    const-string v8, "Standard JPEG still imaging with stabilized preview"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    const-string v8, "Standard YUV still imaging with stabilized preview"

    invoke-direct {v1, v2, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard YUV still imaging with stabilized in-app image processing stream"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v9, 0x100

    invoke-direct {v5, v9, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard JPEG still imaging with stabilized in-app image processing stream"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v6

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "High-resolution video recording with preview both streams stabilized"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v10, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v2, v3

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v4, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v4, v2, v6

    new-instance v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v4, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sPreviewStabilizedStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isReprocessable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 391
    .local p1, "streamsInformation":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    .line 392
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    iput-object p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    .line 397
    iput-boolean p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    .line 398
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty stream information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 440
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 441
    return v0

    .line 443
    :cond_0
    if-ne p0, p1, :cond_1

    .line 444
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    if-eqz v1, :cond_4

    .line 447
    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 448
    .local v1, "other":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    .line 450
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 454
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 451
    :cond_3
    :goto_0
    return v0

    .line 457
    .end local v1    # "other":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_4
    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamsInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 465
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 465
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist isReprocessable()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    return v0
.end method
