.class public Landroid/graphics/text/LineBreaker;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreaker$Result;,
        Landroid/graphics/text/LineBreaker$ParagraphConstraints;,
        Landroid/graphics/text/LineBreaker$Builder;,
        Landroid/graphics/text/LineBreaker$JustificationMode;,
        Landroid/graphics/text/LineBreaker$HyphenationFrequency;,
        Landroid/graphics/text/LineBreaker$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mNativePtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetLineAscent(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineAscent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineBreakOffset(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineBreakOffset(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineCount(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/text/LineBreaker;->nGetLineCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineDescent(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineDescent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineFlag(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineWidth(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineWidth(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetReleaseResultFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseResultFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 448
    const-class v0, Landroid/graphics/text/LineBreaker;

    .line 450
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseFunc()J

    move-result-wide v1

    .line 449
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreaker;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 448
    return-void
.end method

.method private constructor blacklist <init>(III[I)V
    .locals 3
    .param p1, "breakStrategy"    # I
    .param p2, "hyphenationFrequency"    # I
    .param p3, "justify"    # I
    .param p4, "indents"    # [I

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0, p4}, Landroid/graphics/text/LineBreaker;->nInit(IIZ[I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    .line 462
    sget-object v2, Landroid/graphics/text/LineBreaker;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 463
    return-void
.end method

.method synthetic constructor blacklist <init>(III[ILandroid/graphics/text/LineBreaker-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/text/LineBreaker;-><init>(III[I)V

    return-void
.end method

.method private static native blacklist nComputeLineBreaks(J[CJIFIF[FFI)J
.end method

.method private static native blacklist nGetLineAscent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineBreakOffset(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineDescent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineFlag(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineWidth(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseResultFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInit(IIZ[I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;
    .locals 14
    .param p1, "measuredPara"    # Landroid/graphics/text/MeasuredText;
    .param p2, "constraints"    # Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .param p3, "lineNumber"    # I

    .line 478
    new-instance v0, Landroid/graphics/text/LineBreaker$Result;

    move-object v1, p0

    iget-wide v2, v1, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    .line 482
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v4

    .line 483
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v5

    .line 484
    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v7

    array-length v7, v7

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidthLineCount(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmVariableTabStops(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)[F

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmDefaultTabStop(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v12

    .line 478
    move/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/text/LineBreaker;->nComputeLineBreaks(J[CJIFIF[FFI)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/text/LineBreaker$Result;-><init>(JLandroid/graphics/text/LineBreaker$Result-IA;)V

    return-object v0
.end method
