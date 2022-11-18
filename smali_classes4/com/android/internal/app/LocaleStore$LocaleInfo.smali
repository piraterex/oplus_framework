.class public Lcom/android/internal/app/LocaleStore$LocaleInfo;
.super Ljava/lang/Object;
.source "LocaleStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# static fields
.field private static final blacklist SUGGESTION_TYPE_CFG:I = 0x2

.field private static final blacklist SUGGESTION_TYPE_CURRENT:I = 0x4

.field private static final blacklist SUGGESTION_TYPE_NONE:I = 0x0

.field private static final blacklist SUGGESTION_TYPE_SIM:I = 0x1

.field private static final blacklist SUGGESTION_TYPE_SYSTEM_LANGUAGE:I = 0x8


# instance fields
.field private blacklist mFullCountryNameNative:Ljava/lang/String;

.field private blacklist mFullNameNative:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsChecked:Z

.field private blacklist mIsPseudo:Z

.field private blacklist mIsTranslated:Z

.field private blacklist mLangScriptKey:Ljava/lang/String;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mParent:Ljava/util/Locale;

.field private blacklist mSuggestionFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLangScriptKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSuggestionOfType(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    .line 75
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 66
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 69
    iput v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsPseudo:Z

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method private blacklist getLangScriptKey()Ljava/lang/String;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v1, 0x75

    .line 167
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 169
    .local v0, "baseLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 170
    .local v1, "parentWithScript":Ljava/util/Locale;
    nop

    .line 171
    if-nez v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    .line 175
    .end local v0    # "baseLocale":Ljava/util/Locale;
    .end local v1    # "parentWithScript":Ljava/util/Locale;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLangScriptKey:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getParent(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 79
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 84
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    const/16 v2, 0x75

    .line 85
    invoke-virtual {v0, v2, v1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method private blacklist isSuggestionOfType(I)Z
    .locals 2
    .param p1, "suggestionMask"    # I

    .line 125
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public blacklist getChecked()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    return v0
.end method

.method blacklist getContentDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameInUiLanguage()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getFullCountryNameNative()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v0}, Lcom/android/internal/app/LocaleHelper;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullCountryNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getFullNameInUiLanguage()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getFullNameNative()Ljava/lang/String;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x1

    .line 135
    invoke-static {v0, v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayName(Ljava/util/Locale;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mFullNameNative:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getLabel(Z)Ljava/lang/String;
    .locals 1
    .param p1, "countryMode"    # Z

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullCountryNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLocale()Ljava/util/Locale;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public greylist getParent()Ljava/util/Locale;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mParent:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist isAppCurrentLocale()Z
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist isSuggested()Z
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return v1

    .line 121
    :cond_0
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist isSystemLocale()Z
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTranslated()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    return v0
.end method

.method public blacklist setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsChecked:Z

    .line 200
    return-void
.end method

.method public blacklist setTranslated(Z)V
    .locals 0
    .param p1, "isTranslated"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mIsTranslated:Z

    .line 115
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mId:Ljava/lang/String;

    return-object v0
.end method
