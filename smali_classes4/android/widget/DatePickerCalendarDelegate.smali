.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# static fields
.field private static final blacklist ANIMATION_DURATION:I = 0x12c

.field private static final blacklist ATTRS_DISABLED_ALPHA:[I

.field private static final blacklist ATTRS_TEXT_COLOR:[I

.field private static final blacklist DEFAULT_END_YEAR:I = 0x834

.field private static final blacklist DEFAULT_START_YEAR:I = 0x76c

.field private static final blacklist UNINITIALIZED:I = -0x1

.field private static final blacklist USE_LOCALE:I = 0x0

.field private static final blacklist VIEW_MONTH_DAY:I = 0x0

.field private static final blacklist VIEW_YEAR:I = 0x1


# instance fields
.field private blacklist mAnimator:Landroid/widget/ViewAnimator;

.field private blacklist mContainer:Landroid/view/ViewGroup;

.field private blacklist mCurrentView:I

.field private blacklist mDayPickerView:Landroid/widget/DayPickerView;

.field private blacklist mFirstDayOfWeek:I

.field private blacklist mHeaderMonthDay:Landroid/widget/TextView;

.field private blacklist mHeaderYear:Landroid/widget/TextView;

.field private final blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private final blacklist mMinDate:Landroid/icu/util/Calendar;

.field private blacklist mMonthDayFormat:Landroid/icu/text/DateFormat;

.field private final blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final blacklist mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private blacklist mSelectDay:Ljava/lang/String;

.field private blacklist mSelectYear:Ljava/lang/String;

.field private final blacklist mTempDate:Landroid/icu/util/Calendar;

.field private blacklist mYearFormat:Landroid/icu/text/DateFormat;

.field private blacklist mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHeaderYear(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDate(Landroid/widget/DatePickerCalendarDelegate;)Landroid/icu/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monDateChanged(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentView(Landroid/widget/DatePickerCalendarDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDaysInMonth(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 59
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010098

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 61
    new-array v0, v0, [I

    const v1, 0x1010033

    aput v1, v0, v3

    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 93
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 83
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 89
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 236
    new-instance v2, Landroid/widget/DatePickerCalendarDelegate$1;

    invoke-direct {v2, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 247
    new-instance v3, Landroid/widget/DatePickerCalendarDelegate$2;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 281
    new-instance v4, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    iput-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 95
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 96
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 97
    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 98
    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 99
    invoke-static {v5}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v7

    iput-object v7, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 101
    const/16 v8, 0x76c

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v1, v9}, Landroid/icu/util/Calendar;->set(III)V

    .line 102
    const/16 v8, 0x834

    const/16 v10, 0xb

    const/16 v11, 0x1f

    invoke-virtual {v7, v8, v10, v11}, Landroid/icu/util/Calendar;->set(III)V

    .line 104
    iget-object v8, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v8}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 105
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v10, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-virtual {v10, v12, v11, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 107
    .local v10, "a":Landroid/content/res/TypedArray;
    iget-object v11, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v11, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 109
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/16 v15, 0x13

    const v9, 0x109006b

    invoke-virtual {v10, v15, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 113
    .local v9, "layoutResourceId":I
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v11, v9, v15, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    iput-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->setSaveFromParentEnabled(Z)V

    .line 115
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v1}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    .line 118
    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v15, 0x102028f

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 119
    .local v1, "header":Landroid/view/ViewGroup;
    const v15, 0x1020291

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v15, 0x1020290

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const/4 v4, 0x0

    .line 130
    .local v4, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v15, 0xa

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "headerTextColor":Landroid/content/res/ColorStateList;
    .local v16, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v10, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 132
    .local v15, "monthHeaderTextAppearance":I
    if-eqz v15, :cond_0

    .line 133
    iget-object v4, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v17, v5

    .end local v5    # "locale":Ljava/util/Locale;
    .local v17, "locale":Ljava/util/Locale;
    const/4 v5, 0x0

    move/from16 v18, v9

    .end local v9    # "layoutResourceId":I
    .local v18, "layoutResourceId":I
    sget-object v9, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    move-object/from16 v19, v11

    const/4 v11, 0x0

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .local v19, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v4, v5, v9, v11, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 135
    .local v4, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 136
    .local v5, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-direct {v0, v5}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 137
    .end local v16    # "headerTextColor":Landroid/content/res/ColorStateList;
    .local v9, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v9

    goto :goto_0

    .line 132
    .end local v4    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v17    # "locale":Ljava/util/Locale;
    .end local v18    # "layoutResourceId":I
    .end local v19    # "inflater":Landroid/view/LayoutInflater;
    .local v5, "locale":Ljava/util/Locale;
    .local v9, "layoutResourceId":I
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "headerTextColor":Landroid/content/res/ColorStateList;
    :cond_0
    move-object/from16 v17, v5

    move/from16 v18, v9

    move-object/from16 v19, v11

    .end local v5    # "locale":Ljava/util/Locale;
    .end local v9    # "layoutResourceId":I
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "locale":Ljava/util/Locale;
    .restart local v18    # "layoutResourceId":I
    .restart local v19    # "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v4, v16

    .line 140
    .end local v16    # "headerTextColor":Landroid/content/res/ColorStateList;
    .local v4, "headerTextColor":Landroid/content/res/ColorStateList;
    :goto_0
    if-nez v4, :cond_1

    .line 141
    const/16 v5, 0x12

    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 144
    :cond_1
    if-eqz v4, :cond_2

    .line 145
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 151
    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_3
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    const v9, 0x10201ec

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewAnimator;

    iput-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 160
    const v9, 0x102028e

    invoke-virtual {v5, v9}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/DayPickerView;

    iput-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 161
    iget v9, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    invoke-virtual {v5, v9}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 162
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    move-object v11, v10

    .end local v10    # "a":Landroid/content/res/TypedArray;
    .local v11, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 163
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v7}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 164
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v9, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v9}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 165
    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v5, v2}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 168
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    const v5, 0x1020292

    invoke-virtual {v2, v5}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/YearPickerView;

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 169
    invoke-virtual {v2, v6, v7}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 170
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 171
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2, v3}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    .line 174
    const v2, 0x1040866

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 175
    const v2, 0x104086c

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 179
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 181
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 182
    return-void
.end method

.method private blacklist applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 195
    if-eqz p1, :cond_4

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 201
    :cond_0
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 202
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 204
    .local v1, "activatedColor":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .local v3, "defaultColor":I
    goto :goto_0

    .line 207
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 210
    .restart local v1    # "activatedColor":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 211
    .local v3, "ta":Landroid/content/res/TypedArray;
    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 212
    .local v4, "disabledAlpha":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-direct {p0, v1, v4}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    move-result v5

    move v3, v5

    .line 216
    .end local v4    # "disabledAlpha":F
    .local v3, "defaultColor":I
    :goto_0
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 221
    :cond_2
    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput v0, v7, v2

    aput-object v7, v5, v2

    new-array v0, v2, [I

    aput-object v0, v5, v6

    move-object v0, v5

    .line 222
    .local v0, "stateSet":[[I
    new-array v4, v4, [I

    aput v1, v4, v2

    aput v3, v4, v6

    move-object v2, v4

    .line 223
    .local v2, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 218
    .end local v0    # "stateSet":[[I
    .end local v2    # "colors":[I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 196
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_4
    :goto_2
    return-object p1
.end method

.method private static blacklist getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 591
    packed-switch p0, :pswitch_data_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_0
    const/16 v0, 0x1e

    return v0

    .line 606
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

    .line 599
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

.method private blacklist multiplyAlphaComponent(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 227
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 228
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 229
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 230
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method private blacklist onCurrentDateChanged(Z)V
    .locals 4
    .param p1, "announce"    # Z

    .line 313
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 316
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "year":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "monthDay":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    if-eqz p1, :cond_1

    .line 327
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 329
    :cond_1
    return-void
.end method

.method private blacklist onDateChanged(ZZ)V
    .locals 5
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .line 391
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 393
    .local v0, "year":I
    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_2

    .line 395
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 396
    .local v1, "monthOfYear":I
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 397
    .local v2, "dayOfMonth":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 400
    :cond_1
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v3, :cond_2

    .line 401
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 405
    .end local v1    # "monthOfYear":I
    .end local v2    # "dayOfMonth":I
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 406
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 408
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 410
    if-eqz p1, :cond_3

    .line 411
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 413
    :cond_3
    return-void
.end method

.method private blacklist setCurrentView(I)V
    .locals 5
    .param p1, "viewIndex"    # I

    .line 332
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 347
    .local v2, "year":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 348
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    new-instance v4, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/DatePickerCalendarDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    invoke-virtual {v3, v4}, Landroid/widget/YearPickerView;->post(Ljava/lang/Runnable;)Z

    .line 356
    iget v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v3, p1, :cond_0

    .line 357
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 358
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 359
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 360
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 334
    .end local v2    # "year":I
    :pswitch_1
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 336
    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-eq v2, p1, :cond_1

    .line 337
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 338
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 339
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 340
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 343
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 344
    nop

    .line 366
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 384
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 385
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 386
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 387
    invoke-virtual {p0}, Landroid/widget/DatePickerCalendarDelegate;->resetAutofilledValue()V

    .line 388
    return-void
.end method

.method private blacklist tryVibrate()V
    .locals 2

    .line 613
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    .line 614
    return-void
.end method


# virtual methods
.method public blacklist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 582
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 587
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCalendarViewShown()Z
    .locals 1

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDayOfMonth()I
    .locals 2

    .line 427
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .locals 1

    .line 483
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 484
    return v0

    .line 486
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxDate()Landroid/icu/util/Calendar;
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public blacklist getMinDate()Landroid/icu/util/Calendar;
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public blacklist getMonth()I
    .locals 2

    .line 422
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSpinnersShown()Z
    .locals 1

    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getYear()I
    .locals 2

    .line 417
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 371
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 374
    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 375
    return-void
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 500
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-widget-DatePickerCalendarDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 282
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 287
    goto :goto_0

    .line 289
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 292
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1020290
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic blacklist lambda$setCurrentView$1$android-widget-DatePickerCalendarDelegate()V
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->requestFocus()Z

    .line 350
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, "selected":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 354
    :cond_0
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 530
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 531
    return-void
.end method

.method protected blacklist onLocaleChanged(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 296
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 297
    .local v0, "headerYear":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 300
    return-void

    .line 304
    :cond_0
    const-string v1, "EMMMd"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    .line 305
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 306
    const-string/jumbo v1, "y"

    invoke-static {v1, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    .line 309
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 310
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 555
    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1

    .line 556
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 559
    .local v0, "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/icu/util/Calendar;->set(III)V

    .line 560
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 561
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 563
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 565
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    move-result v1

    .line 566
    .local v1, "currentView":I
    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 568
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    move-result v2

    .line 569
    .local v2, "listPosition":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 570
    if-nez v1, :cond_0

    .line 571
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/DayPickerView;->setPosition(I)V

    goto :goto_0

    .line 572
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 573
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    move-result v3

    .line 574
    .local v3, "listPositionOffset":I
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    .line 578
    .end local v0    # "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    .end local v1    # "currentView":I
    .end local v2    # "listPosition":I
    .end local v3    # "listPositionOffset":I
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 19
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 536
    .local v1, "year":I
    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v15

    .line 537
    .local v15, "month":I
    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v16

    .line 539
    .local v16, "day":I
    const/4 v3, -0x1

    .line 540
    .local v3, "listPosition":I
    const/4 v4, -0x1

    .line 542
    .local v4, "listPositionOffset":I
    iget v5, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    if-nez v5, :cond_0

    .line 543
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v2}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    move-result v3

    move v2, v3

    move/from16 v17, v4

    goto :goto_0

    .line 544
    :cond_0
    if-ne v5, v2, :cond_1

    .line 545
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    move-result v3

    .line 546
    iget-object v2, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v2}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    move-result v4

    move v2, v3

    move/from16 v17, v4

    goto :goto_0

    .line 544
    :cond_1
    move v2, v3

    move/from16 v17, v4

    .line 549
    .end local v3    # "listPosition":I
    .end local v4    # "listPositionOffset":I
    .local v2, "listPosition":I
    .local v17, "listPositionOffset":I
    :goto_0
    new-instance v18, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v3, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 550
    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget v12, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move v5, v1

    move v6, v15

    move/from16 v7, v16

    move v13, v2

    move/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 549
    return-object v18
.end method

.method public blacklist setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 511
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 491
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 496
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .line 476
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 478
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 479
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .line 454
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 455
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 456
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 464
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 465
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 466
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 467
    return-void
.end method

.method public blacklist setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .line 432
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 433
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 434
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 442
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 443
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 444
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 445
    return-void
.end method

.method public blacklist setSpinnersShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 521
    return-void
.end method

.method public blacklist updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 379
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    .line 380
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 381
    return-void
.end method
