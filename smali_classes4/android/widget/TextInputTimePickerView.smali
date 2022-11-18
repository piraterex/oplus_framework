.class public Landroid/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o AM:I = 0x0

.field public static final greylist-max-o AMPM:I = 0x2

.field public static final greylist-max-o HOURS:I = 0x0

.field public static final greylist-max-o MINUTES:I = 0x1

.field private static final greylist-max-o PM:I = 0x1


# instance fields
.field private final greylist-max-o mAmPmSpinner:Landroid/widget/Spinner;

.field private final greylist-max-o mErrorLabel:Landroid/widget/TextView;

.field private greylist-max-o mErrorShowing:Z

.field private final greylist-max-o mHourEditText:Landroid/widget/EditText;

.field private greylist-max-o mHourFormatStartsAtZero:Z

.field private final greylist-max-o mHourLabel:Landroid/widget/TextView;

.field private final greylist-max-o mInputSeparatorView:Landroid/widget/TextView;

.field private greylist-max-o mIs24Hour:Z

.field private greylist-max-o mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final greylist-max-o mMinuteEditText:Landroid/widget/EditText;

.field private final greylist-max-o mMinuteLabel:Landroid/widget/TextView;

.field private blacklist mTimeSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinuteEditText(Landroid/widget/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseAndSetHourInternal(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseAndSetMinuteInternal(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    const v0, 0x1090142

    invoke-static {p1, v0, p0}, Landroid/widget/TextInputTimePickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const v0, 0x1020343

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    .line 84
    const v1, 0x102034d

    invoke-virtual {p0, v1}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    .line 85
    const v2, 0x102034f

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    .line 86
    const v2, 0x102036c

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    .line 87
    const v2, 0x102036d

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    .line 88
    const v2, 0x102036e

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    .line 90
    new-instance v2, Landroid/widget/TextInputTimePickerView$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/TextInputTimePickerView$1;-><init>(Landroid/widget/TextInputTimePickerView;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    new-instance v0, Landroid/widget/TextInputTimePickerView$2;

    invoke-direct {v0, p0}, Landroid/widget/TextInputTimePickerView$2;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    const v0, 0x10201e9

    invoke-virtual {p0, v0}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    .line 123
    invoke-static {p1}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "amPmStrings":[Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 126
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 127
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    new-instance v3, Landroid/widget/TextInputTimePickerView$3;

    invoke-direct {v3, p0}, Landroid/widget/TextInputTimePickerView$3;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    return-void
.end method

.method private greylist-max-o getHourOfDayFromLocalizedHour(I)I
    .locals 3
    .param p1, "localizedHour"    # I

    .line 271
    move v0, p1

    .line 272
    .local v0, "hourOfDay":I
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v1, :cond_0

    .line 273
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_2

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 274
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 278
    const/4 v0, 0x0

    .line 280
    :cond_1
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 281
    add-int/lit8 v0, v0, 0xc

    .line 284
    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist isTimeSet()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mTimeSet:Z

    return v0
.end method

.method private greylist-max-o isValidLocalizedHour(I)Z
    .locals 3
    .param p1, "localizedHour"    # I

    .line 265
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 266
    .local v0, "minHour":I
    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    add-int/2addr v2, v0

    .line 267
    .local v2, "maxHour":I
    if-lt p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private greylist-max-o parseAndSetHourInternal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "input"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "hour":I
    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->isValidLocalizedHour(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 233
    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-eqz v2, :cond_0

    move v3, v0

    :cond_0
    move v2, v3

    .line 234
    .local v2, "minHour":I
    iget-boolean v3, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x17

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0xb

    .line 235
    .local v3, "maxHour":I
    :goto_0
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 236
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 235
    invoke-direct {p0, v5}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 237
    return v0

    .line 239
    .end local v2    # "minHour":I
    .end local v3    # "maxHour":I
    :cond_2
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v4

    invoke-interface {v2, v0, v4}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 240
    invoke-direct {p0, v3}, Landroid/widget/TextInputTimePickerView;->setTimeSet(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    return v3

    .line 242
    .end local v1    # "hour":I
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private greylist-max-o parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "minutes":I
    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-interface {v2, v3, v1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    .line 256
    invoke-direct {p0, v3}, Landroid/widget/TextInputTimePickerView;->setTimeSet(Z)V

    .line 257
    return v3

    .line 252
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-interface {v4, v3, v2}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return v0

    .line 258
    .end local v1    # "minutes":I
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private greylist-max-o setError(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 178
    iput-boolean p1, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    .line 180
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method private blacklist setTimeSet(Z)V
    .locals 1
    .param p1, "timeSet"    # Z

    .line 186
    iget-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mTimeSet:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/TextInputTimePickerView;->mTimeSet:Z

    .line 187
    return-void
.end method


# virtual methods
.method greylist-max-o setHourFormat(I)V
    .locals 5
    .param p1, "maxCharLength"    # I

    .line 150
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 152
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 154
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 155
    .local v0, "locales":Landroid/os/LocaleList;
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 156
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    .line 157
    return-void
.end method

.method greylist-max-o setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 146
    iput-object p1, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 147
    return-void
.end method

.method greylist-max-o updateSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1, "separatorText"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method greylist-max-o updateTextInputValues(IIIZZ)V
    .locals 9
    .param p1, "localizedHour"    # I
    .param p2, "minute"    # I
    .param p3, "amOrPm"    # I
    .param p4, "is24Hour"    # Z
    .param p5, "hourFormatStartsAtZero"    # Z

    .line 201
    const-string v0, "%d"

    .line 202
    .local v0, "hourFormat":Ljava/lang/String;
    const-string v1, "%02d"

    .line 204
    .local v1, "minuteFormat":Ljava/lang/String;
    iput-boolean p4, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    .line 205
    iput-boolean p5, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    .line 207
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 209
    const/4 v2, 0x1

    if-nez p3, :cond_1

    .line 210
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 212
    :cond_1
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextInputTimePickerView;->isTimeSet()Z

    move-result v4

    const-string v5, "%02d"

    const-string v6, "%d"

    if-eqz v4, :cond_2

    .line 216
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 219
    :cond_2
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    :goto_2
    iget-boolean v2, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {p0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    .line 227
    :cond_3
    return-void
.end method

.method greylist-max-o validateInput()Z
    .locals 5

    .line 160
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 163
    .local v0, "hourText":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 165
    :cond_1
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 167
    .local v1, "minuteText":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 168
    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    .line 169
    .local v2, "inputValid":Z
    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-direct {p0, v3}, Landroid/widget/TextInputTimePickerView;->setError(Z)V

    .line 170
    return v2
.end method
