.class Landroid/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthView$OnDayClickListener;,
        Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final blacklist DAYS_IN_WEEK:I = 0x7

.field private static final blacklist DEFAULT_SELECTED_DAY:I = -0x1

.field private static final blacklist DEFAULT_WEEK_START:I = 0x1

.field private static final blacklist MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final blacklist MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final blacklist SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private blacklist mActivatedDay:I

.field private final blacklist mCalendar:Landroid/icu/util/Calendar;

.field private blacklist mCellWidth:I

.field private final blacklist mDayFormatter:Ljava/text/NumberFormat;

.field private blacklist mDayHeight:I

.field private final blacklist mDayHighlightPaint:Landroid/graphics/Paint;

.field private final blacklist mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private blacklist mDayOfWeekHeight:I

.field private final blacklist mDayOfWeekLabels:[Ljava/lang/String;

.field private final blacklist mDayOfWeekPaint:Landroid/text/TextPaint;

.field private blacklist mDayOfWeekStart:I

.field private final blacklist mDayPaint:Landroid/text/TextPaint;

.field private final blacklist mDaySelectorPaint:Landroid/graphics/Paint;

.field private blacklist mDaySelectorRadius:I

.field private blacklist mDayTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mDaysInMonth:I

.field private final blacklist mDesiredCellWidth:I

.field private final blacklist mDesiredDayHeight:I

.field private final blacklist mDesiredDayOfWeekHeight:I

.field private final blacklist mDesiredDaySelectorRadius:I

.field private final blacklist mDesiredMonthHeight:I

.field private blacklist mEnabledDayEnd:I

.field private blacklist mEnabledDayStart:I

.field private blacklist mHighlightedDay:I

.field private blacklist mIsTouchHighlighted:Z

.field private final blacklist mLocale:Ljava/util/Locale;

.field private blacklist mMonth:I

.field private blacklist mMonthHeight:I

.field private final blacklist mMonthPaint:Landroid/text/TextPaint;

.field private blacklist mMonthYearLabel:Ljava/lang/String;

.field private blacklist mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private blacklist mPaddedHeight:I

.field private blacklist mPaddedWidth:I

.field private blacklist mPreviouslyHighlightedDay:I

.field private blacklist mToday:I

.field private final blacklist mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

.field private blacklist mWeekStart:I

.field private blacklist mYear:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivatedDay(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDayFormatter(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDaysInMonth(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonth(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToday(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYear(Landroid/widget/SimpleMonthView;)I
    .locals 0

    iget p0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDayAtLocation(Landroid/widget/SimpleMonthView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDayEnabled(Landroid/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValidDayOfMonth(Landroid/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDayClicked(Landroid/widget/SimpleMonthView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 152
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 73
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 74
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 80
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 118
    iput v0, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 121
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 133
    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 136
    const/16 v2, 0x1f

    iput v2, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 143
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 144
    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050101

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 164
    const v2, 0x10500fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 165
    const v2, 0x10500fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 166
    const v2, 0x1050100

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 167
    const v2, 0x10500fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 171
    new-instance v2, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v2, p0, p0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 172
    invoke-virtual {p0, v2}, Landroid/widget/SimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/widget/SimpleMonthView;->setImportantForAccessibility(I)V

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 176
    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    .line 178
    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 180
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 181
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 183
    invoke-direct {p0, v0}, Landroid/widget/SimpleMonthView;->initPaints(Landroid/content/res/Resources;)V

    .line 184
    return-void
.end method

.method private blacklist applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "resId"    # I

    .line 212
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 217
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 220
    :cond_0
    nop

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    .line 220
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 224
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 225
    sget-object v4, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 226
    .local v3, "enabledColor":I
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    .end local v3    # "enabledColor":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-object v2
.end method

.method private blacklist drawDays(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 667
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 668
    .local v3, "headerHeight":I
    iget v4, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 669
    .local v4, "rowHeight":I
    iget v5, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 672
    .local v5, "colWidth":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 673
    .local v6, "halfLineHeight":F
    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    .line 675
    .local v7, "rowCenter":I
    const/4 v8, 0x1

    .local v8, "day":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    .local v9, "col":I
    :goto_0
    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt v8, v10, :cond_b

    .line 676
    mul-int v10, v5, v9

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    .line 678
    .local v10, "colCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 679
    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v11, v10

    .local v11, "colCenterRtl":I
    goto :goto_1

    .line 681
    .end local v11    # "colCenterRtl":I
    :cond_0
    move v11, v10

    .line 684
    .restart local v11    # "colCenterRtl":I
    :goto_1
    const/4 v12, 0x0

    .line 686
    .local v12, "stateMask":I
    invoke-direct {v0, v8}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v13

    .line 687
    .local v13, "isDayEnabled":Z
    if-eqz v13, :cond_1

    .line 688
    or-int/lit8 v12, v12, 0x8

    .line 691
    :cond_1
    iget v14, v0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    const/16 v16, 0x1

    if-ne v14, v8, :cond_2

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 692
    .local v14, "isDayActivated":Z
    :goto_2
    iget v15, v0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-ne v15, v8, :cond_3

    move/from16 v15, v16

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 693
    .local v15, "isDayHighlighted":Z
    :goto_3
    if-eqz v14, :cond_5

    .line 694
    or-int/lit8 v12, v12, 0x20

    .line 697
    if-eqz v15, :cond_4

    move/from16 v18, v3

    .end local v3    # "headerHeight":I
    .local v18, "headerHeight":I
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_4

    .line 698
    .end local v18    # "headerHeight":I
    .restart local v3    # "headerHeight":I
    :cond_4
    move/from16 v18, v3

    .end local v3    # "headerHeight":I
    .restart local v18    # "headerHeight":I
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_4
    nop

    .line 699
    .local v3, "paint":Landroid/graphics/Paint;
    move/from16 v19, v5

    .end local v5    # "colWidth":I
    .local v19, "colWidth":I
    int-to-float v5, v11

    move/from16 v20, v10

    .end local v10    # "colCenter":I
    .local v20, "colCenter":I
    int-to-float v10, v7

    move/from16 v21, v12

    .end local v12    # "stateMask":I
    .local v21, "stateMask":I
    iget v12, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v12, v12

    invoke-virtual {v1, v5, v10, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 700
    .end local v3    # "paint":Landroid/graphics/Paint;
    move/from16 v12, v21

    goto :goto_6

    .end local v18    # "headerHeight":I
    .end local v19    # "colWidth":I
    .end local v20    # "colCenter":I
    .end local v21    # "stateMask":I
    .local v3, "headerHeight":I
    .restart local v5    # "colWidth":I
    .restart local v10    # "colCenter":I
    .restart local v12    # "stateMask":I
    :cond_5
    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v10

    .end local v3    # "headerHeight":I
    .end local v5    # "colWidth":I
    .end local v10    # "colCenter":I
    .restart local v18    # "headerHeight":I
    .restart local v19    # "colWidth":I
    .restart local v20    # "colCenter":I
    if-eqz v15, :cond_7

    .line 701
    or-int/lit8 v12, v12, 0x10

    .line 703
    if-eqz v13, :cond_6

    .line 705
    int-to-float v3, v11

    int-to-float v5, v7

    iget v10, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    int-to-float v10, v10

    move/from16 v21, v12

    .end local v12    # "stateMask":I
    .restart local v21    # "stateMask":I
    iget-object v12, v0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 703
    .end local v21    # "stateMask":I
    .restart local v12    # "stateMask":I
    :cond_6
    move/from16 v21, v12

    .line 710
    .end local v12    # "stateMask":I
    .restart local v21    # "stateMask":I
    :goto_5
    move/from16 v12, v21

    .end local v21    # "stateMask":I
    .restart local v12    # "stateMask":I
    :cond_7
    :goto_6
    iget v3, v0, Landroid/widget/SimpleMonthView;->mToday:I

    if-ne v3, v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    :goto_7
    move/from16 v3, v16

    .line 712
    .local v3, "isDayToday":Z
    if-eqz v3, :cond_9

    if-nez v14, :cond_9

    .line 713
    iget-object v5, v0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    move/from16 v16, v3

    .local v5, "dayTextColor":I
    goto :goto_8

    .line 715
    .end local v5    # "dayTextColor":I
    :cond_9
    invoke-static {v12}, Landroid/util/StateSet;->get(I)[I

    move-result-object v5

    .line 716
    .local v5, "stateSet":[I
    iget-object v10, v0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "isDayToday":Z
    .local v16, "isDayToday":Z
    invoke-virtual {v10, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    move v5, v3

    .line 718
    .local v5, "dayTextColor":I
    :goto_8
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 720
    iget-object v3, v0, Landroid/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v17, v12

    move v10, v13

    .end local v12    # "stateMask":I
    .end local v13    # "isDayEnabled":Z
    .local v10, "isDayEnabled":Z
    .local v17, "stateMask":I
    int-to-long v12, v8

    invoke-virtual {v3, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    int-to-float v12, v11

    int-to-float v13, v7

    sub-float/2addr v13, v6

    invoke-virtual {v1, v3, v12, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 722
    add-int/lit8 v9, v9, 0x1

    .line 724
    const/4 v3, 0x7

    if-ne v9, v3, :cond_a

    .line 725
    const/4 v3, 0x0

    .line 726
    .end local v9    # "col":I
    .local v3, "col":I
    add-int/2addr v7, v4

    move v9, v3

    .line 675
    .end local v3    # "col":I
    .end local v5    # "dayTextColor":I
    .end local v10    # "isDayEnabled":Z
    .end local v11    # "colCenterRtl":I
    .end local v14    # "isDayActivated":Z
    .end local v15    # "isDayHighlighted":Z
    .end local v16    # "isDayToday":Z
    .end local v17    # "stateMask":I
    .end local v20    # "colCenter":I
    .restart local v9    # "col":I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v18

    move/from16 v5, v19

    goto/16 :goto_0

    .line 729
    .end local v8    # "day":I
    .end local v9    # "col":I
    .end local v18    # "headerHeight":I
    .end local v19    # "colWidth":I
    .local v3, "headerHeight":I
    .local v5, "colWidth":I
    :cond_b
    return-void
.end method

.method private blacklist drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 639
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 640
    .local v0, "p":Landroid/text/TextPaint;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 641
    .local v1, "headerHeight":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 642
    .local v2, "rowHeight":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 645
    .local v3, "colWidth":I
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 646
    .local v4, "halfLineHeight":F
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    .line 648
    .local v5, "rowCenter":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    .line 649
    mul-int v7, v3, v6

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    .line 651
    .local v7, "colCenter":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 652
    iget v8, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v8, v7

    .local v8, "colCenterRtl":I
    goto :goto_1

    .line 654
    .end local v8    # "colCenterRtl":I
    :cond_0
    move v8, v7

    .line 657
    .restart local v8    # "colCenterRtl":I
    :goto_1
    iget-object v9, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v9, v9, v6

    .line 658
    .local v9, "label":Ljava/lang/String;
    int-to-float v10, v8

    int-to-float v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 648
    .end local v7    # "colCenter":I
    .end local v8    # "colCenterRtl":I
    .end local v9    # "label":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 660
    .end local v6    # "col":I
    :cond_1
    return-void
.end method

.method private blacklist drawMonth(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 625
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 628
    .local v0, "x":F
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    .line 629
    .local v2, "lineHeight":F
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 631
    .local v3, "y":F
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 632
    return-void
.end method

.method private blacklist ensureFocusedDay()V
    .locals 2

    .line 587
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 588
    return-void

    .line 590
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    .line 591
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 592
    return-void

    .line 594
    :cond_1
    iget v0, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    if-eq v0, v1, :cond_2

    .line 595
    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 596
    return-void

    .line 598
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 599
    return-void
.end method

.method private blacklist findClosestColumn(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 550
    if-nez p1, :cond_0

    .line 551
    const/4 v0, 0x3

    return v0

    .line 552
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 553
    return v1

    .line 555
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddingLeft:I

    sub-int/2addr v0, v2

    .line 556
    .local v0, "centerX":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    div-int v2, v0, v2

    const/4 v3, 0x6

    .line 557
    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 558
    .local v1, "columnFromLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    rsub-int/lit8 v2, v1, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2
.end method

.method private blacklist findClosestRow(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 520
    if-nez p1, :cond_0

    .line 521
    const/4 v0, 0x3

    return v0

    .line 522
    :cond_0
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 523
    return v1

    .line 525
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 527
    .local v0, "centerY":I
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 528
    .local v2, "p":Landroid/text/TextPaint;
    iget v3, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v3, v4

    .line 529
    .local v3, "headerHeight":I
    iget v4, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 532
    .local v4, "rowHeight":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 533
    .local v5, "halfLineHeight":F
    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v3

    .line 535
    .local v6, "rowCenter":I
    int-to-float v7, v0

    int-to-float v8, v6

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v0, v7

    .line 536
    int-to-float v7, v0

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 537
    .local v7, "row":I
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v8

    iget v9, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int/2addr v8, v9

    .line 538
    .local v8, "maxDay":I
    div-int/lit8 v9, v8, 0x7

    rem-int/lit8 v10, v8, 0x7

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    move v10, v1

    :goto_0
    sub-int/2addr v9, v10

    .line 540
    .local v9, "maxRows":I
    invoke-static {v7, v1, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 541
    .end local v7    # "row":I
    .local v1, "row":I
    return v1
.end method

.method private blacklist findDayOffset()I
    .locals 3

    .line 932
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    sub-int v2, v0, v1

    .line 933
    .local v2, "offset":I
    if-ge v0, v1, :cond_0

    .line 934
    add-int/lit8 v0, v2, 0x7

    return v0

    .line 936
    :cond_0
    return v2
.end method

.method private blacklist getDayAtLocation(II)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 949
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    .line 950
    .local v0, "paddedX":I
    const/4 v1, -0x1

    if-ltz v0, :cond_5

    iget v2, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-lt v0, v2, :cond_0

    goto :goto_2

    .line 954
    :cond_0
    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v2, v3

    .line 955
    .local v2, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    .line 956
    .local v3, "paddedY":I
    if-lt v3, v2, :cond_4

    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 962
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 963
    iget v4, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    sub-int/2addr v4, v0

    .local v4, "paddedXRtl":I
    goto :goto_0

    .line 965
    .end local v4    # "paddedXRtl":I
    :cond_2
    move v4, v0

    .line 968
    .restart local v4    # "paddedXRtl":I
    :goto_0
    sub-int v5, v3, v2

    iget v6, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/2addr v5, v6

    .line 969
    .local v5, "row":I
    mul-int/lit8 v6, v4, 0x7

    iget v7, p0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/2addr v6, v7

    .line 970
    .local v6, "col":I
    mul-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v6

    .line 971
    .local v7, "index":I
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v9

    sub-int/2addr v8, v9

    .line 972
    .local v8, "day":I
    invoke-direct {p0, v8}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 973
    return v1

    .line 976
    :cond_3
    return v8

    .line 957
    .end local v4    # "paddedXRtl":I
    .end local v5    # "row":I
    .end local v6    # "col":I
    .end local v7    # "index":I
    .end local v8    # "day":I
    :cond_4
    :goto_1
    return v1

    .line 951
    .end local v2    # "headerHeight":I
    .end local v3    # "paddedY":I
    :cond_5
    :goto_2
    return v1
.end method

.method private static blacklist getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 840
    packed-switch p0, :pswitch_data_0

    .line 857
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :pswitch_0
    const/16 v0, 0x1e

    return v0

    .line 855
    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 848
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist initPaints(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 266
    const v0, 0x104030c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "monthTypeface":Ljava/lang/String;
    const v1, 0x1040302

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "dayOfWeekTypeface":Ljava/lang/String;
    const v2, 0x1040303

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "dayTypeface":Ljava/lang/String;
    const v3, 0x1050102

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 272
    .local v3, "monthTextSize":I
    const v4, 0x10500fd

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 274
    .local v4, "dayOfWeekTextSize":I
    const v5, 0x10500ff

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 277
    .local v5, "dayTextSize":I
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 278
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 279
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 280
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 281
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 284
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v9, v4

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 285
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 286
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 289
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 296
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 299
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 300
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 301
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 302
    iget-object v6, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    return-void
.end method

.method private blacklist isDayEnabled(I)Z
    .locals 1
    .param p1, "day"    # I

    .line 732
    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isFirstDayOfWeek(I)Z
    .locals 3
    .param p1, "day"    # I

    .line 602
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 603
    .local v0, "offset":I
    add-int v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist isLastDayOfWeek(I)Z
    .locals 2
    .param p1, "day"    # I

    .line 607
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 608
    .local v0, "offset":I
    add-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isValidDayOfMonth(I)Z
    .locals 2
    .param p1, "day"    # I

    .line 736
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "day"    # I

    .line 740
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isValidMonth(I)Z
    .locals 1
    .param p0, "month"    # I

    .line 744
    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist moveOneDay(Z)Z
    .locals 4
    .param p1, "positive"    # Z

    .line 461
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "focusChanged":Z
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 464
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isLastDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v2, v3, :cond_1

    .line 465
    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 466
    const/4 v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    invoke-direct {p0, v2}, Landroid/widget/SimpleMonthView;->isFirstDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v2, v1, :cond_1

    .line 470
    sub-int/2addr v2, v1

    iput v2, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 471
    const/4 v0, 0x1

    .line 474
    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist onDayClicked(I)Z
    .locals 3
    .param p1, "day"    # I

    .line 1020
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    .line 1025
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1026
    .local v0, "date":Landroid/icu/util/Calendar;
    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1027
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Landroid/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Landroid/widget/SimpleMonthView;Landroid/icu/util/Calendar;)V

    .line 1031
    .end local v0    # "date":Landroid/icu/util/Calendar;
    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 1032
    return v1

    .line 1021
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist sameDay(ILandroid/icu/util/Calendar;)Z
    .locals 3
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/icu/util/Calendar;

    .line 862
    iget v0, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    .line 863
    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 862
    :goto_0
    return v1
.end method

.method private blacklist updateDayOfWeekLabels()V
    .locals 5

    .line 196
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "tinyWeekdayNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 199
    iget-object v3, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-object v2, v0, v4

    aput-object v2, v3, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist updateMonthYearLabel()V
    .locals 3

    .line 187
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    .local v1, "formatter":Landroid/icu/text/SimpleDateFormat;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 190
    iget-object v2, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 345
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public blacklist getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 986
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    const/4 v0, 0x0

    return v0

    .line 990
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 993
    .local v0, "index":I
    rem-int/lit8 v1, v0, 0x7

    .line 994
    .local v1, "col":I
    iget v2, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 996
    .local v2, "colWidth":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 997
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .local v3, "left":I
    goto :goto_0

    .line 999
    .end local v3    # "left":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    .line 1003
    .restart local v3    # "left":I
    :goto_0
    div-int/lit8 v4, v0, 0x7

    .line 1004
    .local v4, "row":I
    iget v5, p0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 1005
    .local v5, "rowHeight":I
    iget v6, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    iget v7, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    add-int/2addr v6, v7

    .line 1006
    .local v6, "headerHeight":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v6

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    .line 1008
    .local v7, "top":I
    add-int v8, v3, v2

    add-int v9, v7, v5

    invoke-virtual {p2, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1010
    const/4 v8, 0x1

    return v8
.end method

.method public blacklist getCellWidth()I
    .locals 1

    .line 239
    iget v0, p0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    return v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 564
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-lez v0, :cond_0

    .line 565
    invoke-virtual {p0, v0, p1}, Landroid/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    .line 567
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 569
    :goto_0
    return-void
.end method

.method public blacklist getMonthHeight()I
    .locals 1

    .line 235
    iget v0, p0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    return v0
.end method

.method public blacklist getMonthYearLabel()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 613
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v0

    .line 614
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    .line 615
    .local v1, "paddingTop":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 617
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawMonth(Landroid/graphics/Canvas;)V

    .line 618
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDaysOfWeek(Landroid/graphics/Canvas;)V

    .line 619
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 621
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 622
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 480
    if-eqz p1, :cond_3

    .line 484
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 485
    .local v0, "offset":I
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    .line 497
    :sswitch_0
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v2

    .line 498
    .local v2, "col":I
    sub-int v3, v2, v0

    add-int/2addr v3, v1

    .line 499
    .local v3, "day":I
    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x7

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 500
    goto :goto_3

    .line 487
    .end local v2    # "col":I
    .end local v3    # "day":I
    :sswitch_1
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v2

    .line 488
    .local v2, "row":I
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v3, v2, 0x7

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    :goto_1
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 489
    goto :goto_3

    .line 503
    .end local v2    # "row":I
    :sswitch_2
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    move-result v2

    .line 504
    .local v2, "col":I
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    .line 505
    .local v4, "maxWeeks":I
    sub-int v5, v2, v0

    mul-int/lit8 v6, v4, 0x7

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    .line 506
    .local v5, "day":I
    if-le v5, v3, :cond_2

    add-int/lit8 v1, v5, -0x7

    goto :goto_2

    :cond_2
    move v1, v5

    :goto_2
    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 507
    goto :goto_3

    .line 492
    .end local v2    # "col":I
    .end local v4    # "maxWeeks":I
    .end local v5    # "day":I
    :sswitch_3
    invoke-direct {p0, p3}, Landroid/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    move-result v2

    add-int/2addr v2, v1

    .line 493
    .local v2, "row":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    mul-int/lit8 v3, v2, 0x7

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 494
    nop

    .line 510
    .end local v2    # "row":I
    :goto_3
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 511
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 513
    .end local v0    # "offset":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 514
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected blacklist onFocusLost()V
    .locals 1

    .line 573
    iget-boolean v0, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    if-nez v0, :cond_0

    .line 575
    iget v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iput v0, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 577
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 579
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 580
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "focusChanged":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 430
    :sswitch_0
    const/4 v1, 0x0

    .line 431
    .local v1, "focusChangeDirection":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    const/4 v1, 0x2

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    const/4 v1, 0x1

    .line 436
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 437
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 439
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v4, p0

    .line 441
    .local v4, "nextFocus":Landroid/view/View;
    :cond_2
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 442
    if-eqz v4, :cond_3

    if-eq v4, p0, :cond_3

    .line 443
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_2

    .line 444
    :cond_3
    if-eqz v4, :cond_4

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 446
    return v3

    .line 448
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "nextFocus":Landroid/view/View;
    :cond_4
    goto :goto_1

    .line 424
    .end local v1    # "focusChangeDirection":I
    :sswitch_1
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 425
    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 426
    return v3

    .line 399
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 400
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_1

    .line 394
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 395
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isLayoutRtl()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/SimpleMonthView;->moveOneDay(Z)Z

    move-result v0

    goto :goto_1

    .line 413
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 415
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    iget v4, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_5

    .line 416
    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 417
    const/4 v0, 0x1

    goto :goto_1

    .line 404
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 405
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 406
    iget v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-le v1, v2, :cond_5

    .line 407
    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 408
    const/4 v0, 0x1

    .line 452
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 453
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 454
    return v3

    .line 456
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x3d -> :sswitch_0
        0x42 -> :sswitch_1
        0xa0 -> :sswitch_1
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 887
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 888
    return-void

    .line 892
    :cond_0
    sub-int v1, p4, p2

    .line 893
    .local v1, "w":I
    sub-int v2, p5, p3

    .line 894
    .local v2, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    .line 895
    .local v3, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v4

    .line 896
    .local v4, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result v5

    .line 897
    .local v5, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v6

    .line 898
    .local v6, "paddingBottom":I
    sub-int v7, v1, v5

    .line 899
    .local v7, "paddedRight":I
    sub-int v8, v2, v6

    .line 900
    .local v8, "paddedBottom":I
    sub-int v9, v7, v3

    .line 901
    .local v9, "paddedWidth":I
    sub-int v10, v8, v4

    .line 902
    .local v10, "paddedHeight":I
    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    if-eq v9, v11, :cond_2

    iget v11, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    if-ne v10, v11, :cond_1

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_0

    .line 906
    :cond_1
    iput v9, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    .line 907
    iput v10, v0, Landroid/widget/SimpleMonthView;->mPaddedHeight:I

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SimpleMonthView;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int/2addr v11, v6

    .line 912
    .local v11, "measuredPaddedHeight":I
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 913
    .local v12, "scaleH":F
    iget v13, v0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 914
    .local v13, "monthHeight":I
    iget v14, v0, Landroid/widget/SimpleMonthView;->mPaddedWidth:I

    div-int/lit8 v14, v14, 0x7

    .line 915
    .local v14, "cellWidth":I
    iput v13, v0, Landroid/widget/SimpleMonthView;->mMonthHeight:I

    .line 916
    iget v15, v0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, Landroid/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 917
    iget v15, v0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    .line 918
    iput v14, v0, Landroid/widget/SimpleMonthView;->mCellWidth:I

    .line 922
    div-int/lit8 v15, v14, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v15, v15, v16

    .line 923
    .local v15, "maxSelectorWidth":I
    move/from16 v16, v1

    .end local v1    # "w":I
    .local v16, "w":I
    iget v1, v0, Landroid/widget/SimpleMonthView;->mDayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    .line 924
    .local v1, "maxSelectorHeight":I
    move/from16 v17, v2

    .end local v2    # "h":I
    .local v17, "h":I
    iget v2, v0, Landroid/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 925
    move/from16 v18, v3

    .end local v3    # "paddingLeft":I
    .local v18, "paddingLeft":I
    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 924
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 928
    iget-object v2, v0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 929
    return-void

    .line 902
    .end local v11    # "measuredPaddedHeight":I
    .end local v12    # "scaleH":F
    .end local v13    # "monthHeight":I
    .end local v14    # "cellWidth":I
    .end local v15    # "maxSelectorWidth":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "paddingLeft":I
    .local v1, "w":I
    .restart local v2    # "h":I
    .restart local v3    # "paddingLeft":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    .line 903
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "paddingLeft":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    .restart local v18    # "paddingLeft":I
    :goto_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 868
    iget v0, p0, Landroid/widget/SimpleMonthView;->mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredMonthHeight:I

    add-int/2addr v0, v1

    .line 870
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    .local v0, "preferredHeight":I
    iget v1, p0, Landroid/widget/SimpleMonthView;->mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    .line 872
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 873
    .local v1, "preferredWidth":I
    invoke-static {v1, p1}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v2

    .line 874
    .local v2, "resolvedWidth":I
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthView;->resolveSize(II)I

    move-result v3

    .line 875
    .local v3, "resolvedHeight":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleMonthView;->setMeasuredDimension(II)V

    .line 876
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1037
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    return-object v0

    .line 1041
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1042
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1043
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v2

    .line 1044
    .local v2, "dayUnderPointer":I
    if-ltz v2, :cond_1

    .line 1045
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    .line 1047
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 880
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 882
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->requestLayout()V

    .line 883
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 351
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 353
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 354
    .local v2, "action":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 371
    :pswitch_0
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 372
    .local v5, "clickedDay":I
    invoke-direct {p0, v5}, Landroid/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 376
    .end local v5    # "clickedDay":I
    :pswitch_1
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 377
    iput-boolean v3, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 378
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    goto :goto_0

    .line 357
    :pswitch_2
    invoke-direct {p0, v0, v1}, Landroid/widget/SimpleMonthView;->getDayAtLocation(II)I

    move-result v5

    .line 358
    .local v5, "touchedItem":I
    iput-boolean v4, p0, Landroid/widget/SimpleMonthView;->mIsTouchHighlighted:Z

    .line 359
    iget v6, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    if-eq v6, v5, :cond_0

    .line 360
    iput v5, p0, Landroid/widget/SimpleMonthView;->mHighlightedDay:I

    .line 361
    iput v5, p0, Landroid/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 362
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 364
    :cond_0
    if-nez v2, :cond_1

    if-gez v5, :cond_1

    .line 366
    return v3

    .line 381
    .end local v5    # "touchedItem":I
    :cond_1
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method blacklist setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "dayHighlightColor"    # Landroid/content/res/ColorStateList;

    .line 332
    nop

    .line 333
    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 334
    .local v0, "pressedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 336
    return-void
.end method

.method public blacklist setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 249
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 250
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 251
    return-void
.end method

.method blacklist setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "dayOfWeekTextColor"    # Landroid/content/res/ColorStateList;

    .line 312
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 313
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 315
    return-void
.end method

.method blacklist setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "dayBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 323
    nop

    .line 324
    const/16 v0, 0x28

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .line 323
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 325
    .local v0, "activatedColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 329
    return-void
.end method

.method public blacklist setDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 254
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 255
    .local v0, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 256
    iput-object v0, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 260
    return-void
.end method

.method blacklist setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "dayTextColor"    # Landroid/content/res/ColorStateList;

    .line 318
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 319
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 320
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "weekStart"    # I

    .line 768
    invoke-static {p1}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iput p1, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 771
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 774
    :goto_0
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 777
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 778
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 779
    return-void
.end method

.method blacklist setMonthParams(IIIIII)V
    .locals 5
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I

    .line 799
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 801
    invoke-static {p2}, Landroid/widget/SimpleMonthView;->isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iput p2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    .line 804
    :cond_0
    iput p3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    .line 806
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 807
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    iget v1, p0, Landroid/widget/SimpleMonthView;->mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 808
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 809
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 811
    invoke-static {p4}, Landroid/widget/SimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iput p4, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Landroid/widget/SimpleMonthView;->mWeekStart:I

    .line 818
    :goto_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 819
    .local v0, "today":Landroid/icu/util/Calendar;
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 820
    iget v1, p0, Landroid/widget/SimpleMonthView;->mMonth:I

    iget v3, p0, Landroid/widget/SimpleMonthView;->mYear:I

    invoke-static {v1, v3}, Landroid/widget/SimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    if-ge v1, v3, :cond_3

    .line 822
    add-int/lit8 v3, v1, 0x1

    .line 823
    .local v3, "day":I
    invoke-direct {p0, v3, v0}, Landroid/widget/SimpleMonthView;->sameDay(ILandroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 824
    iput v3, p0, Landroid/widget/SimpleMonthView;->mToday:I

    .line 821
    .end local v3    # "day":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 828
    .end local v1    # "i":I
    :cond_3
    invoke-static {p5, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 829
    iget v2, p0, Landroid/widget/SimpleMonthView;->mDaysInMonth:I

    invoke-static {p6, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Landroid/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 831
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 832
    invoke-direct {p0}, Landroid/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 835
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 836
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 837
    return-void
.end method

.method public blacklist setMonthTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 243
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, Landroid/widget/SimpleMonthView;->applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    .line 245
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 246
    return-void
.end method

.method blacklist setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "monthTextColor"    # Landroid/content/res/ColorStateList;

    .line 306
    sget-object v0, Landroid/widget/SimpleMonthView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 307
    .local v0, "enabledColor":I
    iget-object v1, p0, Landroid/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 308
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 309
    return-void
.end method

.method public blacklist setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 339
    iput-object p1, p0, Landroid/widget/SimpleMonthView;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 340
    return-void
.end method

.method public blacklist setSelectedDay(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .line 754
    iput p1, p0, Landroid/widget/SimpleMonthView;->mActivatedDay:I

    .line 757
    iget-object v0, p0, Landroid/widget/SimpleMonthView;->mTouchHelper:Landroid/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 758
    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 759
    return-void
.end method
