.class public Lcom/android/internal/app/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 182
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 133
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;

    .line 114
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "languageTag":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 116
    .local v1, "uDisplayLocale":Landroid/icu/util/ULocale;
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "country":Ljava/lang/String;
    const-string/jumbo v3, "nu"

    invoke-virtual {p0, v3}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "numberingSystem":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 119
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    .line 120
    const-string/jumbo v6, "numbers"

    invoke-static {v0, v6, v1}, Landroid/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 119
    const-string v5, "%s (%s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 122
    :cond_0
    return-object v2
.end method

.method public static blacklist getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;
    .locals 9
    .param p0, "locales"    # Landroid/os/LocaleList;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "maxLocales"    # I

    .line 148
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 150
    .local v0, "dispLocale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 152
    .local v1, "ellipsisNeeded":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 153
    move v3, p2

    .line 154
    .local v3, "localeCount":I
    add-int/lit8 v4, p2, 0x1

    .local v4, "listCount":I
    goto :goto_2

    .line 156
    .end local v3    # "localeCount":I
    .end local v4    # "listCount":I
    :cond_2
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v3

    move v4, v3

    .local v4, "localeCount":I
    move v8, v4

    move v3, v8

    .line 158
    .restart local v3    # "localeCount":I
    .local v4, "listCount":I
    :goto_2
    new-array v5, v4, [Ljava/lang/String;

    .line 159
    .local v5, "localeNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v3, :cond_3

    .line 160
    invoke-virtual {p0, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v0, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 162
    .end local v6    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 168
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, p2

    .line 171
    :cond_4
    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    move-result-object v2

    .line 172
    .local v2, "lfn":Landroid/icu/text/ListFormatter;
    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static greylist getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "displayLocale"    # Ljava/util/Locale;
    .param p2, "sentenceCase"    # Z

    .line 87
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 88
    .local v0, "displayULocale":Landroid/icu/util/ULocale;
    invoke-static {p0}, Lcom/android/internal/app/LocaleHelper;->shouldUseDialectName(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 91
    .local v1, "result":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {v1, p1}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public static blacklist getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "sentenceCase"    # Z

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist shouldUseDialectName(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 71
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    const-string/jumbo v1, "ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 72
    :goto_1
    return v1
.end method

.method public static blacklist toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 45
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
