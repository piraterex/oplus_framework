.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final greylist-max-o DATE_TIME_FORMAT_SYMBOLS:Ljava/lang/String; = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

.field private static final greylist-max-o SINGLE_QUOTE:C = '\''


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method static greylist-max-o addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 226
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "amPm":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 231
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 232
    aget-object v4, v1, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 233
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v4    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 236
    .restart local v4    # "ch":C
    :cond_1
    return v0

    .line 230
    .end local v3    # "j":I
    .end local v4    # "ch":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            ")Z"
        }
    .end annotation

    .line 152
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 153
    return v0

    .line 155
    :cond_0
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "digits":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 157
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 158
    return v0

    .line 160
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method static greylist-max-o addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeleton"    # Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 174
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    return v0

    .line 177
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "pattern":Ljava/lang/String;
    const/4 v2, 0x1

    .line 179
    .local v2, "outsideQuotes":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 181
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 182
    return v0

    .line 183
    :cond_1
    const/16 v6, 0x27

    if-ne v4, v6, :cond_3

    .line 184
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    move v2, v5

    .line 187
    if-eqz v3, :cond_6

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    .line 188
    goto :goto_2

    .line 192
    :cond_3
    if-eqz v2, :cond_5

    .line 193
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 195
    goto :goto_2

    .line 196
    :cond_4
    const-string v5, "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_5

    .line 198
    return v0

    .line 203
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v4    # "ch":C
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v3    # "i":I
    :cond_7
    return v5
.end method

.method static greylist-max-o addFormatCharsFromSkeletons(Ljava/util/Collection;Ljava/util/Locale;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "skeletons"    # [Ljava/lang/String;
    .param p3, "symbolsToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 212
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 213
    aget-object v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 215
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 216
    const/4 v2, 0x0

    return v2

    .line 212
    .end local v1    # "success":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o collectionToArray(Ljava/util/Collection;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 246
    .local p0, "chars":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [C

    .line 247
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 248
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 249
    .local v3, "ch":Ljava/lang/Character;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v0, v1

    .line 250
    .end local v3    # "ch":Ljava/lang/Character;
    move v1, v4

    goto :goto_0

    .line 251
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected static whitelist ok([CC)Z
    .locals 3
    .param p0, "accept"    # [C
    .param p1, "c"    # C

    .line 94
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 95
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_0

    .line 96
    return v1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 57
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 58
    .local v0, "accept":[C
    const/4 v1, 0x0

    .line 61
    .local v1, "filter":Z
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 62
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    if-ne v2, p3, :cond_2

    .line 69
    const/4 v3, 0x0

    return-object v3

    .line 72
    :cond_2
    sub-int v3, p3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 74
    const-string v3, ""

    return-object v3

    .line 77
    :cond_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 79
    .local v3, "filtered":Landroid/text/SpannableStringBuilder;
    sub-int/2addr v2, p2

    .line 80
    sub-int/2addr p3, p2

    .line 82
    sub-int v4, p3, p2

    .line 84
    .local v4, "len":I
    add-int/lit8 v5, p3, -0x1

    .local v5, "j":I
    :goto_2
    if-lt v5, v2, :cond_5

    .line 85
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_4

    .line 86
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 84
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 90
    .end local v5    # "j":I
    :cond_5
    return-object v3
.end method

.method protected abstract whitelist getAcceptedChars()[C
.end method

.method protected whitelist lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "content"    # Landroid/text/Spannable;

    .line 52
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 109
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 110
    .local v0, "a":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 112
    .local v1, "b":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    .local v2, "selStart":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    .end local v1    # "b":I
    .local v0, "selEnd":I
    const/4 v1, 0x0

    if-ltz v2, :cond_0

    if-gez v0, :cond_1

    .line 117
    :cond_0
    move v0, v1

    move v2, v1

    .line 118
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 121
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    .line 122
    .local v3, "i":I
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 123
    .local v1, "repeatCount":I
    :cond_3
    const/4 v4, 0x1

    if-nez v1, :cond_5

    .line 124
    if-eqz v3, :cond_6

    .line 125
    if-eq v2, v0, :cond_4

    .line 126
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 129
    :cond_4
    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v0, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 131
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 132
    return v4

    .line 134
    :cond_5
    const/16 v5, 0x30

    if-ne v3, v5, :cond_6

    if-ne v1, v4, :cond_6

    .line 137
    if-ne v2, v0, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v6, v2, -0x1

    .line 138
    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_6

    .line 139
    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x2b

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 140
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 141
    return v4

    .line 145
    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method
