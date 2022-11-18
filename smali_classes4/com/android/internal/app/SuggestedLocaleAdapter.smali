.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field private static final blacklist APP_LANGUAGE_PICKER_TYPE_COUNT:I = 0x5

.field private static final blacklist MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final blacklist SYSTEM_LANGUAGE_TYPE_COUNT:I = 0x3

.field private static final blacklist SYSTEM_LANGUAGE_WITHOUT_HEADER_TYPE_COUNT:I = 0x1

.field private static final blacklist TYPE_CURRENT_LOCALE:I = 0x4

.field private static final blacklist TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final blacklist TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final blacklist TYPE_LOCALE:I = 0x2

.field private static final blacklist TYPE_SYSTEM_LANGUAGE_FOR_APP_LANGUAGE_PICKER:I = 0x3


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mContextOverride:Landroid/content/Context;

.field private final blacklist mCountryMode:Z

.field private blacklist mDisplayLocale:Ljava/util/Locale;

.field private blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSuggestionCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .locals 1
    .param p2, "countryMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 76
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZLjava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZLjava/lang/String;)V
    .locals 3
    .param p2, "countryMode"    # Z
    .param p3, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 72
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 81
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    .line 83
    iput-object p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mAppPackageName:Ljava/lang/String;

    .line 85
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 86
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method private blacklist addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 420
    return-void
.end method

.method private blacklist getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "itemType"    # I
    .param p4, "position"    # I

    .line 244
    move-object v0, p1

    .line 246
    .local v0, "updatedView":Landroid/view/View;
    const v1, 0x1090039

    const v2, 0x1090099

    const v3, 0x1020371

    const v4, 0x1020385

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p3, :pswitch_data_0

    .line 285
    :pswitch_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 286
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    goto/16 :goto_4

    .line 276
    :pswitch_1
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move v2, v5

    .line 278
    .local v2, "shouldReuseView":Z
    if-nez v2, :cond_8

    .line 279
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V

    goto/16 :goto_5

    .line 257
    .end local v2    # "shouldReuseView":Z
    :pswitch_2
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v2, v5

    .line 260
    .restart local v2    # "shouldReuseView":Z
    if-nez v2, :cond_8

    .line 261
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 264
    invoke-direct {p0, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V

    goto :goto_5

    .line 267
    .end local v2    # "shouldReuseView":Z
    :cond_2
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    move v1, v5

    .line 269
    .local v1, "shouldReuseView":Z
    if-nez v1, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move v2, v1

    goto :goto_5

    .line 269
    :cond_4
    move v2, v1

    goto :goto_5

    .line 249
    .end local v1    # "shouldReuseView":Z
    :pswitch_3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    const v1, 0x1020370

    .line 250
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :goto_3
    move v2, v5

    .line 251
    .restart local v2    # "shouldReuseView":Z
    if-nez v2, :cond_8

    .line 252
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109009a

    invoke-virtual {v1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 286
    .end local v2    # "shouldReuseView":Z
    :cond_6
    move v5, v6

    :goto_4
    move v1, v5

    .line 287
    .restart local v1    # "shouldReuseView":Z
    if-nez v1, :cond_7

    .line 288
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move v2, v1

    goto :goto_5

    .line 287
    :cond_7
    move v2, v1

    .line 292
    .end local v1    # "shouldReuseView":Z
    .restart local v2    # "shouldReuseView":Z
    :cond_8
    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setTextTo(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 189
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    return-void
.end method

.method private blacklist showHeaders()Z
    .locals 3

    .line 304
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 305
    return v1

    .line 307
    :cond_0
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "text"    # Landroid/widget/TextView;
    .param p3, "position"    # I

    .line 403
    invoke-virtual {p0, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 404
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 406
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 410
    .local v1, "layoutDir":I
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 411
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 412
    const/4 v2, 0x4

    goto :goto_0

    .line 413
    :cond_0
    const/4 v2, 0x3

    .line 411
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 415
    .end local v1    # "layoutDir":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 1

    .line 399
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 169
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .line 107
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 109
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    return v3

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    return v1

    .line 115
    :cond_1
    return v2

    .line 117
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_2
    if-nez p1, :cond_3

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_3
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_4

    .line 121
    return v4

    .line 124
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 125
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    return v3

    .line 128
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    return v1

    .line 131
    :cond_6
    return v2
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 199
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    .line 204
    .local v0, "itemType":I
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, "itemView":Landroid/view/View;
    const v2, 0x1020371

    const v3, 0x1020385

    packed-switch v0, :pswitch_data_0

    .line 235
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto :goto_3

    .line 231
    :pswitch_1
    nop

    .line 232
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 233
    goto :goto_3

    .line 223
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "title":Landroid/widget/TextView;
    goto :goto_0

    .line 226
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 228
    .restart local v2    # "title":Landroid/widget/TextView;
    :goto_0
    const v3, 0x1040901

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 229
    goto :goto_3

    .line 208
    .end local v2    # "title":Landroid/widget/TextView;
    :pswitch_3
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 209
    .local v2, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_2

    .line 210
    const v3, 0x10404e0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 212
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_3

    .line 213
    const v3, 0x1040808

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 215
    :cond_3
    const v3, 0x10404df

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    .line 218
    :goto_1
    nop

    .line 219
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 218
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 220
    nop

    .line 238
    .end local v2    # "textView":Landroid/widget/TextView;
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x5

    return v0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x3

    return v0

    .line 144
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 100
    :goto_1
    return v0
.end method

.method public blacklist setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 177
    if-nez p2, :cond_0

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 179
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 182
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 183
    .local v0, "configOverride":Landroid/content/res/Configuration;
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 186
    .end local v0    # "configOverride":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .locals 1
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .line 315
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    return-void
.end method
