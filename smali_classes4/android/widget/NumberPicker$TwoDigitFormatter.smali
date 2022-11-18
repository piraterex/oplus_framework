.class Landroid/widget/NumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final greylist-max-o mArgs:[Ljava/lang/Object;

.field final greylist-max-o mBuilder:Ljava/lang/StringBuilder;

.field greylist-max-o mFmt:Ljava/util/Formatter;

.field greylist-max-o mZeroDigit:C


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 191
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 192
    return-void
.end method

.method private greylist-max-o createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 215
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static greylist-max-o getZeroDigit(Ljava/util/Locale;)C
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 211
    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method private greylist-max-o init(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 195
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 196
    invoke-static {p1}, Landroid/widget/NumberPicker$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mZeroDigit:C

    .line 197
    return-void
.end method


# virtual methods
.method public whitelist format(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .line 200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 201
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-char v1, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mZeroDigit:C

    invoke-static {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 202
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 204
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 205
    iget-object v1, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    const-string v3, "%02d"

    invoke-virtual {v1, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 207
    iget-object v1, p0, Landroid/widget/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
