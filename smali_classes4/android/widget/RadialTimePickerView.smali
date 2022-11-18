.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final greylist-max-o AM:I = 0x0

.field private static final greylist-max-o ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final greylist-max-o ANIM_DURATION_TOUCH:I = 0x3c

.field private static final greylist-max-o COS_30:[F

.field private static final greylist-max-o DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final greylist-max-o DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final greylist-max-o HOURS:I = 0x0

.field private static final greylist-max-o HOURS_INNER:I = 0x2

.field private static final greylist-max-o HOURS_IN_CIRCLE:I = 0xc

.field private static final greylist-max-o HOURS_NUMBERS:[I

.field private static final greylist-max-o HOURS_NUMBERS_24:[I

.field public static final greylist-max-o MINUTES:I = 0x1

.field private static final greylist-max-o MINUTES_IN_CIRCLE:I = 0x3c

.field private static final greylist-max-o MINUTES_NUMBERS:[I

.field private static final greylist-max-o MISSING_COLOR:I = -0xff01

.field private static final greylist-max-o NUM_POSITIONS:I = 0xc

.field private static final greylist-max-o PM:I = 0x1

.field private static final greylist-max-o SELECTOR_CIRCLE:I = 0x0

.field private static final greylist-max-o SELECTOR_DOT:I = 0x1

.field private static final greylist-max-o SELECTOR_LINE:I = 0x2

.field private static final greylist-max-o SIN_30:[F

.field private static final greylist-max-o SNAP_PREFER_30S_MAP:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final greylist-max-o HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAmOrPm:I

.field private greylist-max-o mCenterDotRadius:I

.field greylist-max-o mChangedDuringTouch:Z

.field private greylist-max-o mCircleRadius:I

.field private greylist-max-o mDisabledAlpha:F

.field private greylist-max-o mHalfwayDist:I

.field private final greylist-max-o mHours12Texts:[Ljava/lang/String;

.field private greylist-max-o mHoursToMinutes:F

.field private greylist-max-o mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final greylist-max-o mInnerHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mInnerTextHours:[Ljava/lang/String;

.field private final greylist-max-o mInnerTextX:[F

.field private final greylist-max-o mInnerTextY:[F

.field private greylist-max-o mInputEnabled:Z

.field private greylist-max-o mIs24HourMode:Z

.field private greylist-max-o mIsOnInnerCircle:Z

.field private greylist-max-o mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private greylist-max-o mMaxDistForOuterNumber:I

.field private greylist-max-o mMinDistForInnerNumber:I

.field private greylist-max-o mMinutesText:[Ljava/lang/String;

.field private final greylist-max-o mMinutesTexts:[Ljava/lang/String;

.field private final greylist-max-o mOuterHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mOuterTextHours:[Ljava/lang/String;

.field private final greylist-max-o mOuterTextX:[[F

.field private final greylist-max-o mOuterTextY:[[F

.field private final greylist-max-o mPaint:[Landroid/graphics/Paint;

.field private final greylist-max-o mPaintBackground:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintCenter:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintSelector:[Landroid/graphics/Paint;

.field private final greylist-max-o mSelectionDegrees:[I

.field private greylist-max-o mSelectorColor:I

.field private greylist-max-o mSelectorDotColor:I

.field private greylist-max-o mSelectorDotRadius:I

.field private final greylist-max-o mSelectorPath:Landroid/graphics/Path;

.field private greylist-max-o mSelectorRadius:I

.field private greylist-max-o mSelectorStroke:I

.field private greylist-max-o mShowHours:Z

.field private final greylist-max-o mTextColor:[Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextInset:[I

.field private final greylist-max-o mTextSize:[I

.field private final greylist-max-o mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;

.field private greylist-max-o mXCenter:I

.field private greylist-max-o mYCenter:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHoursToMinutes(Landroid/widget/RadialTimePickerView;)F
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHoursToMinutes(Landroid/widget/RadialTimePickerView;F)V
    .locals 0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsnapOnly30s(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 9

    .line 86
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 88
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 93
    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 96
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 97
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 104
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 106
    const-wide v1, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 107
    .local v1, "increment":D
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 108
    .local v3, "angle":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 109
    sget-object v6, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 110
    sget-object v6, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 111
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v3, v6

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "increment":D
    .end local v3    # "angle":D
    .end local v5    # "i":I
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 317
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 320
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 321
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 325
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 329
    move-object/from16 v0, p0

    const-class v1, F

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v2, Landroid/widget/RadialTimePickerView$1;

    const-string v3, "hoursToMinutes"

    invoke-direct {v2, v0, v3}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v2, v0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 129
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 130
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 131
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 132
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 134
    const/4 v3, 0x2

    new-array v4, v3, [Landroid/graphics/Paint;

    iput-object v4, v0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 135
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 136
    const/4 v6, 0x3

    new-array v7, v6, [Landroid/graphics/Paint;

    iput-object v7, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 137
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 141
    new-array v9, v6, [Landroid/content/res/ColorStateList;

    iput-object v9, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 142
    new-array v9, v6, [I

    iput-object v9, v0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 143
    new-array v6, v6, [I

    iput-object v6, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 145
    new-array v10, v3, [I

    fill-array-data v10, :array_0

    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    iput-object v10, v0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 146
    new-array v10, v3, [I

    fill-array-data v10, :array_1

    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, v0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 148
    new-array v1, v2, [F

    iput-object v1, v0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 149
    new-array v1, v2, [F

    iput-object v1, v0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 151
    new-array v1, v3, [I

    iput-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 155
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 961
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 331
    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual {v0, v11, v12, v13}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 334
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 335
    .local v14, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const v2, 0x1010033

    invoke-virtual {v15, v2, v14, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 336
    invoke-virtual {v14}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, v0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 338
    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 340
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v4, v10

    .line 341
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 342
    aget-object v2, v4, v10

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 344
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v4, v1

    .line 345
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    aget-object v2, v4, v1

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 348
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v7, v10

    .line 351
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v7, v1

    .line 354
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v7, v3

    .line 357
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    aget-object v2, v7, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 363
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x10502c4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 364
    const v4, 0x10502c5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 365
    const v4, 0x10502c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 366
    const v4, 0x10502bb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 368
    const v4, 0x10502ca

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v9, v10

    .line 369
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v9, v1

    .line 370
    const v4, 0x10502c9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v9, v3

    .line 372
    const v4, 0x10502c8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v6, v10

    .line 373
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v6, v1

    .line 374
    const v4, 0x10502c7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v6, v3

    .line 376
    iput-boolean v1, v0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 377
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 378
    iput-boolean v10, v0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 379
    iput v10, v0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 382
    new-instance v3, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v3, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object v3, v0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 383
    invoke-virtual {v0, v3}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 389
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 390
    invoke-direct/range {p0 .. p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 393
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 394
    .local v3, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 395
    .local v4, "currentHour":I
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 397
    .local v5, "currentMinute":I
    invoke-direct {v0, v4, v10, v10}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 398
    invoke-direct {v0, v5, v10}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 401
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xc
    .end array-data
.end method

.method private greylist-max-o animatePicker(ZJ)V
    .locals 5
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    .line 703
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 704
    .local v0, "target":F
    :goto_0
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 706
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 708
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 712
    :cond_1
    return-void

    .line 715
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 716
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 717
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 718
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 719
    return-void
.end method

.method private static greylist-max-o calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .line 882
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 883
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 886
    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 887
    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o calculatePositionsHours()V
    .locals 12

    .line 851
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 854
    .local v0, "numbersRadius":F
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 858
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    .line 859
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int/2addr v1, v3

    .line 860
    .local v1, "innerNumbersRadius":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v3, v2

    int-to-float v6, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v8, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v2, v2, v4

    int-to-float v9, v2

    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v5 .. v11}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 863
    .end local v1    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private greylist-max-o calculatePositionsMinutes()V
    .locals 10

    .line 867
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 870
    .local v0, "numbersRadius":F
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 872
    return-void
.end method

.method private greylist-max-o drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .line 784
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 785
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 786
    return-void
.end method

.method private greylist-max-o drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 722
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 723
    return-void
.end method

.method private greylist-max-o drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 726
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 727
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_0

    .line 730
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 731
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 732
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 733
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 737
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 738
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 739
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 742
    :cond_0
    return-void
.end method

.method private greylist-max-o drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    .line 746
    move-object/from16 v13, p0

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 751
    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 752
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v6, v13, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, v13, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 756
    :cond_2
    return-void
.end method

.method private greylist-max-o drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 759
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 760
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_0

    .line 763
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 764
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 765
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 766
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 770
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 771
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 772
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 773
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 775
    :cond_0
    return-void
.end method

.method private greylist-max-o drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    .line 778
    move-object v13, p0

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 781
    return-void
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    .line 794
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v1, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    .line 795
    .local v9, "hoursIndex":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v10, v1, v9

    .line 796
    .local v10, "hoursInset":I
    iget-object v4, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v5, v9, 0x2

    aget v11, v4, v5

    .line 797
    .local v11, "hoursAngleDeg":I
    rem-int/lit8 v5, v9, 0x2

    aget v5, v4, v5

    rem-int/lit8 v5, v5, 0x1e

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v13, v5

    .line 799
    .local v13, "hoursDotScale":F
    const/4 v14, 0x1

    .line 800
    .local v14, "minutesIndex":I
    const/4 v5, 0x1

    aget v15, v1, v5

    .line 801
    .local v15, "minutesInset":I
    aget v1, v4, v5

    .line 802
    .local v1, "minutesAngleDeg":I
    aget v4, v4, v5

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 805
    .local v6, "minutesDotScale":F
    :goto_2
    iget v4, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 806
    .local v4, "selRadius":I
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v3, v3

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 807
    invoke-static {v10, v15, v5}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v5

    sub-float v18, v3, v5

    .line 808
    .local v18, "selLength":F
    int-to-float v3, v11

    int-to-float v5, v1

    iget v12, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 809
    invoke-static {v3, v5, v12}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v3

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    .line 810
    .local v20, "selAngleRad":D
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    move v12, v6

    .end local v6    # "minutesDotScale":F
    .local v12, "minutesDotScale":F
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v18

    add-float v6, v2, v5

    .line 811
    .local v6, "selCenterX":F
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    move v5, v4

    .end local v4    # "selRadius":I
    .local v5, "selRadius":I
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v18

    sub-float v4, v2, v3

    .line 814
    .local v4, "selCenterY":F
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 815
    .local v3, "paint":Landroid/graphics/Paint;
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 816
    int-to-float v2, v5

    invoke-virtual {v7, v6, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 819
    if-eqz v8, :cond_3

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 821
    int-to-float v2, v5

    move/from16 v22, v1

    .end local v1    # "minutesAngleDeg":I
    .local v22, "minutesAngleDeg":I
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v6, v4, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 819
    .end local v22    # "minutesAngleDeg":I
    .restart local v1    # "minutesAngleDeg":I
    :cond_3
    move/from16 v22, v1

    .line 825
    .end local v1    # "minutesAngleDeg":I
    .restart local v22    # "minutesAngleDeg":I
    :goto_3
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v13, v12, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v23

    .line 826
    .local v23, "dotScale":F
    const/4 v1, 0x0

    cmpl-float v1, v23, v1

    if-lez v1, :cond_4

    .line 827
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 828
    .local v1, "dotPaint":Landroid/graphics/Paint;
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v2, v2

    mul-float v2, v2, v23

    invoke-virtual {v7, v6, v4, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 834
    .end local v1    # "dotPaint":Landroid/graphics/Paint;
    :cond_4
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 835
    .local v24, "sin":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 836
    .local v26, "cos":D
    int-to-float v1, v5

    sub-float v2, v18, v1

    .line 837
    .local v2, "lineLength":F
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move-object/from16 v17, v3

    .end local v3    # "paint":Landroid/graphics/Paint;
    .local v17, "paint":Landroid/graphics/Paint;
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    move/from16 v28, v4

    move/from16 v19, v5

    .end local v4    # "selCenterY":F
    .end local v5    # "selRadius":I
    .local v19, "selRadius":I
    .local v28, "selCenterY":F
    int-to-double v4, v3

    mul-double v4, v4, v24

    double-to-int v4, v4

    add-int v29, v1, v4

    .line 838
    .local v29, "centerX":I
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-double v3, v3

    mul-double v3, v3, v26

    double-to-int v3, v3

    sub-int v30, v1, v3

    .line 839
    .local v30, "centerY":I
    float-to-double v3, v2

    mul-double v3, v3, v24

    double-to-int v1, v3

    add-int v1, v29, v1

    int-to-float v5, v1

    .line 840
    .local v5, "linePointX":F
    float-to-double v3, v2

    mul-double v3, v3, v26

    double-to-int v1, v3

    sub-int v1, v30, v1

    int-to-float v4, v1

    .line 843
    .local v4, "linePointY":F
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    .line 844
    .local v3, "linePaint":Landroid/graphics/Paint;
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 845
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 846
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v1, v1

    move/from16 v16, v1

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    move/from16 v31, v1

    move/from16 v35, v22

    move/from16 v22, v16

    move/from16 v16, v35

    .end local v22    # "minutesAngleDeg":I
    .local v16, "minutesAngleDeg":I
    move-object/from16 v1, p1

    move/from16 v32, v2

    .end local v2    # "lineLength":F
    .local v32, "lineLength":F
    move/from16 v2, v22

    move-object/from16 v22, v3

    .end local v3    # "linePaint":Landroid/graphics/Paint;
    .local v22, "linePaint":Landroid/graphics/Paint;
    move/from16 v3, v31

    move/from16 v31, v4

    .end local v4    # "linePointY":F
    .local v31, "linePointY":F
    move v4, v5

    move/from16 v33, v5

    .end local v5    # "linePointX":F
    .local v33, "linePointX":F
    move/from16 v5, v31

    move/from16 v34, v6

    .end local v6    # "selCenterX":F
    .local v34, "selCenterX":F
    move-object/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 847
    return-void
.end method

.method private greylist-max-o drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    .line 897
    move-object/from16 v0, p8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 898
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 901
    move/from16 v3, p11

    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    .line 902
    .local v4, "activatedIndex":F
    float-to-int v5, v4

    .line 903
    .local v5, "activatedFloor":I
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xc

    rem-int/2addr v6, v7

    .line 905
    .local v6, "activatedCeil":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 906
    const/4 v9, 0x0

    if-eq v5, v8, :cond_1

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    move v10, v9

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 907
    .local v10, "activated":Z
    :goto_2
    if-eqz p12, :cond_2

    if-nez v10, :cond_2

    .line 908
    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v14, p9

    goto :goto_4

    .line 911
    :cond_2
    const/16 v11, 0x8

    .line 912
    if-eqz p10, :cond_3

    if-eqz v10, :cond_3

    const/16 v12, 0x20

    goto :goto_3

    :cond_3
    move v12, v9

    :goto_3
    or-int/2addr v11, v12

    .line 913
    .local v11, "stateMask":I
    invoke-static {v11}, Landroid/util/StateSet;->get(I)[I

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    .line 914
    .local v9, "color":I
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 915
    move-object/from16 v12, p0

    move/from16 v14, p9

    invoke-direct {v12, v9, v14}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 917
    aget-object v15, p5, v8

    aget v7, p6, v8

    aget v1, p7, v8

    move-object/from16 v2, p1

    invoke-virtual {v2, v15, v7, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 905
    .end local v9    # "color":I
    .end local v10    # "activated":Z
    .end local v11    # "stateMask":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/16 v7, 0xc

    goto :goto_0

    :cond_4
    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p4

    move/from16 v14, p9

    .line 919
    .end local v8    # "i":I
    return-void
.end method

.method private greylist-max-o getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .line 549
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 550
    if-lt p1, v1, :cond_1

    .line 551
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 553
    :cond_0
    if-ne p1, v1, :cond_1

    .line 554
    const/4 p1, 0x0

    .line 556
    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method private greylist-max-o getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .line 590
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private greylist-max-o getDegreesFromXY(FFZ)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .line 925
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 926
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 927
    .local v0, "innerBound":I
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .local v1, "outerBound":I
    goto :goto_0

    .line 929
    .end local v0    # "innerBound":I
    .end local v1    # "outerBound":I
    :cond_0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    .line 930
    .local v0, "index":I
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    .line 931
    .local v1, "center":I
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v3, v1, v2

    .line 932
    .local v3, "innerBound":I
    add-int/2addr v2, v1

    move v1, v2

    move v0, v3

    .line 935
    .end local v3    # "innerBound":I
    .local v0, "innerBound":I
    .local v1, "outerBound":I
    :goto_0
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    .line 936
    .local v2, "dX":D
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    .line 937
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 938
    .local v6, "distFromCenter":D
    int-to-double v8, v0

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_3

    if-eqz p3, :cond_1

    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    goto :goto_1

    .line 943
    :cond_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 944
    .local v8, "degrees":I
    if-gez v8, :cond_2

    .line 945
    add-int/lit16 v9, v8, 0x168

    return v9

    .line 947
    :cond_2
    return v8

    .line 939
    .end local v8    # "degrees":I
    :cond_3
    :goto_1
    const/4 v8, -0x1

    return v8
.end method

.method private greylist-max-o getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .line 527
    div-int/lit8 v0, p1, 0x1e

    rem-int/lit8 v0, v0, 0xc

    .line 528
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    .line 531
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 533
    const/16 v0, 0xc

    goto :goto_0

    .line 534
    :cond_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 536
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 538
    :cond_1
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 539
    add-int/lit8 v0, v0, 0xc

    .line 541
    :cond_2
    :goto_0
    return v0
.end method

.method private greylist-max-o getInnerCircleForHour(I)Z
    .locals 1
    .param p1, "hour"    # I

    .line 563
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o getInnerCircleFromXY(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 952
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_1

    .line 953
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v2, v0

    .line 954
    .local v2, "dX":D
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v4, v0

    .line 955
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 956
    .local v6, "distFromCenter":D
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 958
    .end local v2    # "dX":D
    .end local v4    # "dY":D
    .end local v6    # "distFromCenter":D
    :cond_1
    return v1
.end method

.method private greylist-max-o getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .line 586
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private greylist-max-o getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .line 789
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private greylist-max-o handleTouchInput(FFZZ)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .line 998
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    .line 999
    .local v0, "isOnInnerCircle":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v2

    .line 1000
    .local v2, "degrees":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1001
    return v1

    .line 1005
    :cond_0
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v4, 0x3c

    invoke-direct {p0, v3, v4, v5}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1011
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1012
    invoke-static {v2, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1013
    .local v3, "snapDegrees":I
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 1015
    .local v5, "valueChanged":Z
    :goto_1
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1016
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v1

    .line 1017
    const/4 v6, 0x0

    .line 1018
    .local v6, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    .line 1019
    .local v3, "newValue":I
    goto :goto_3

    .line 1020
    .end local v3    # "newValue":I
    .end local v5    # "valueChanged":Z
    .end local v6    # "type":I
    :cond_3
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1021
    .local v3, "snapDegrees":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v6, v5, v4

    if-eq v6, v3, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    .line 1022
    .local v6, "valueChanged":Z
    :goto_2
    aput v3, v5, v4

    .line 1023
    const/4 v5, 0x1

    .line 1024
    .local v5, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    move v3, v7

    move v8, v6

    move v6, v5

    move v5, v8

    .line 1027
    .local v3, "newValue":I
    .local v5, "valueChanged":Z
    .local v6, "type":I
    :goto_3
    if-nez v5, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    .line 1041
    :cond_5
    return v1

    .line 1029
    :cond_6
    :goto_4
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    .line 1030
    invoke-interface {v1, v6, v3, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1034
    :cond_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_9

    .line 1035
    :cond_8
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1036
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1038
    :cond_9
    return v4
.end method

.method private greylist-max-o initData()V
    .locals 1

    .line 635
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 637
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 640
    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 643
    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 644
    return-void
.end method

.method private greylist-max-o initHoursAndMinutesText()V
    .locals 8

    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 627
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "%d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 628
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v7, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v7, "%02d"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 629
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 630
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static greylist-max-o preparePrefer30sMap()V
    .locals 5

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "snappedOutputDegrees":I
    const/4 v1, 0x1

    .line 247
    .local v1, "count":I
    const/16 v2, 0x8

    .line 249
    .local v2, "expectedCount":I
    const/4 v3, 0x0

    .local v3, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v3, v4, :cond_3

    .line 251
    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v0, v4, v3

    .line 254
    if-ne v1, v2, :cond_2

    .line 255
    add-int/lit8 v0, v0, 0x6

    .line 256
    const/16 v4, 0x168

    if-ne v0, v4, :cond_0

    .line 257
    const/4 v2, 0x7

    goto :goto_1

    .line 258
    :cond_0
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_1

    .line 259
    const/16 v2, 0xe

    goto :goto_1

    .line 261
    :cond_1
    const/4 v2, 0x4

    .line 263
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 249
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "degrees":I
    :cond_3
    return-void
.end method

.method private greylist-max-o setCurrentHourInternal(IZZ)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .line 496
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 497
    .local v0, "degrees":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 500
    if-eqz p1, :cond_1

    rem-int/lit8 v1, p1, 0x18

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 501
    .local v1, "amOrPm":I
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v3

    .line 502
    .local v3, "isOnInnerCircle":Z
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v1, :cond_2

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v3, :cond_3

    .line 503
    :cond_2
    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 504
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 506
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 507
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 510
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 512
    if-eqz p2, :cond_4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_4

    .line 513
    invoke-interface {v4, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 515
    :cond_4
    return-void
.end method

.method private greylist-max-o setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .line 571
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 573
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 575
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    .line 576
    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 578
    :cond_0
    return-void
.end method

.method private greylist-max-o showPicker(ZZ)V
    .locals 2
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    .line 680
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    .line 681
    return-void

    .line 684
    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 686
    if-eqz p2, :cond_1

    .line 687
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    .line 690
    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 694
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 697
    :goto_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 698
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 699
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 700
    return-void
.end method

.method private static greylist-max-o snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .line 294
    const/16 v0, 0x1e

    .line 295
    .local v0, "stepSize":I
    div-int/lit8 v1, p0, 0x1e

    mul-int/lit8 v1, v1, 0x1e

    .line 296
    .local v1, "floor":I
    add-int/lit8 v2, v1, 0x1e

    .line 297
    .local v2, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 298
    move p0, v2

    goto :goto_0

    .line 299
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 300
    if-ne p0, v1, :cond_1

    .line 301
    add-int/lit8 v1, v1, -0x1e

    .line 303
    :cond_1
    move p0, v1

    goto :goto_0

    .line 305
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v2, p0

    if-ge v3, v4, :cond_3

    .line 306
    move p0, v1

    goto :goto_0

    .line 308
    :cond_3
    move p0, v2

    .line 311
    :goto_0
    return p0
.end method

.method private static greylist-max-o snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .line 278
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    .line 279
    const/4 v0, -0x1

    return v0

    .line 281
    :cond_0
    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method greylist-max-o applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 404
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 405
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 407
    .local v8, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move-object v4, v8

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 410
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 412
    .local v0, "numbersTextColor":Landroid/content/res/ColorStateList;
    const/16 v1, 0x9

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 414
    .local v1, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v3, -0xff01

    if-nez v0, :cond_0

    .line 415
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 416
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 417
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    aput-object v3, v2, v4

    .line 418
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    aget-object v4, v2, v5

    aput-object v4, v2, v3

    .line 421
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 424
    .local v2, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v3, 0x28

    if-eqz v2, :cond_2

    .line 425
    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v4

    .line 427
    .local v4, "stateSetEnabledActivated":[I
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 429
    .local v4, "selectorActivatedColor":I
    goto :goto_2

    .line 430
    .end local v4    # "selectorActivatedColor":I
    :cond_2
    const v4, -0xff01

    .line 433
    .restart local v4    # "selectorActivatedColor":I
    :goto_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    .line 438
    .local v3, "stateSetActivated":[I
    iput v4, p0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 439
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 441
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v6, 0x4

    const v9, 0x10602ac

    .line 442
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 441
    invoke-virtual {v8, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    return-void
.end method

.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1047
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const/4 v0, 0x1

    return v0

    .line 1050
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getAmOrPm()I
    .locals 1

    .line 613
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public greylist-max-o getCurrentHour()I
    .locals 2

    .line 523
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getCurrentItemShowing()I
    .locals 1

    .line 471
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o getCurrentMinute()I
    .locals 2

    .line 582
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o initialize(IIZ)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .line 448
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 449
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 450
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 453
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 454
    invoke-direct {p0, p2, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 455
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 668
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 670
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 672
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 673
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 674
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 675
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 676
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 677
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 648
    if-nez p1, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 653
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 654
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 656
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v3, v2, v1

    sub-int v4, v0, v3

    iget v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 657
    const/4 v4, 0x0

    aget v2, v2, v4

    sub-int v4, v0, v2

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 658
    add-int/2addr v2, v3

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 660
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 661
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 663
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 664
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1060
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    const/4 v0, 0x0

    return-object v0

    .line 1063
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 1064
    .local v0, "degrees":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1065
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 1067
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 965
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 966
    return v1

    .line 969
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 970
    .local v0, "action":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_4

    .line 973
    :cond_1
    const/4 v2, 0x0

    .line 974
    .local v2, "forceSelection":Z
    const/4 v3, 0x0

    .line 976
    .local v3, "autoAdvance":Z
    if-nez v0, :cond_2

    .line 978
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    .line 979
    :cond_2
    if-ne v0, v1, :cond_3

    .line 980
    const/4 v3, 0x1

    .line 984
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v4, :cond_3

    .line 985
    const/4 v2, 0x1

    .line 989
    :cond_3
    :goto_0
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 990
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 989
    invoke-direct {p0, v5, v6, v2, v3}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 993
    .end local v2    # "forceSelection":Z
    .end local v3    # "autoAdvance":Z
    :cond_4
    return v1
.end method

.method public greylist-max-o setAmOrPm(I)Z
    .locals 1
    .param p1, "amOrPm"    # I

    .line 602
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 607
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 608
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 609
    const/4 v0, 0x1

    return v0

    .line 603
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 484
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 485
    return-void
.end method

.method public greylist-max-o setCurrentItemShowing(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .line 458
    packed-switch p1, :pswitch_data_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockView does not support showing item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadialTimePickerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 464
    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    .line 461
    nop

    .line 468
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 568
    return-void
.end method

.method public greylist-max-o setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .line 1054
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1055
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1056
    return-void
.end method

.method public greylist-max-o setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 475
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 476
    return-void
.end method

.method public greylist-max-o showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 618
    return-void
.end method

.method public greylist-max-o showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 622
    return-void
.end method
