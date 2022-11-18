.class public Lcom/android/internal/app/LocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "LocalePickerWithRegion.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    }
.end annotation


# static fields
.field private static final blacklist PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mFirstVisiblePosition:I

.field private blacklist mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private blacklist mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private blacklist mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private blacklist mPreviousSearch:Ljava/lang/CharSequence;

.field private blacklist mPreviousSearchHadFocus:Z

.field private blacklist mSearchView:Landroid/widget/SearchView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTopDistance:I

.field private blacklist mTranslatedOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 61
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 63
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 64
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 66
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private static blacklist createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .param p4, "appPackageName"    # Ljava/lang/String;
    .param p5, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 86
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 87
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {v0, p5}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 88
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/lang/String;)Z

    move-result v1

    .line 90
    .local v1, "shouldShowTheList":Z
    if-eqz v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z

    .line 95
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 96
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/lang/String;)Z

    .line 97
    return-object v0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLjava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p2, "translatedOnly"    # Z
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 103
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 104
    .local v0, "localePicker":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {v0, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 105
    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/lang/String;)Z

    .line 107
    return-object v0
.end method

.method private blacklist filterTheLanguagesNotSupportedInApp(ZLjava/util/HashSet;)Ljava/util/Set;
    .locals 6
    .param p1, "shouldShowList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 207
    .local p2, "supportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v0, "filteredList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-nez p1, :cond_0

    .line 209
    return-object v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 213
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 216
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    .line 217
    .local v4, "l":Ljava/util/Locale;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    goto :goto_2

    .line 221
    .end local v4    # "l":Ljava/util/Locale;
    :cond_2
    goto :goto_1

    .line 223
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    :goto_2
    goto :goto_0

    .line 225
    :cond_4
    return-object v0
.end method

.method private blacklist returnToParentFrame()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "localeListEditor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 231
    return-void
.end method

.method private blacklist setListener(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/lang/String;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    .param p3, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p4, "translatedOnly"    # Z
    .param p5, "appPackageName"    # Ljava/lang/String;

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    iput-object v3, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 126
    iput-object v2, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    .line 127
    iput-boolean v4, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 128
    iput-object v5, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mAppPackageName:Ljava/lang/String;

    .line 129
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/internal/app/LocalePickerWithRegion;->setRetainInstance(Z)V

    .line 131
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v7, "langTagsToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    nop

    .line 133
    invoke-static {v1, v5}, Lcom/android/internal/app/LocaleStore;->getAppCurrentLocaleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v8

    .line 134
    .local v8, "appCurrentLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v9

    .line 136
    .local v10, "isForCountryMode":Z
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v10, :cond_3

    .line 138
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v11

    .line 139
    .local v11, "systemLangList":Landroid/os/LocaleList;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/os/LocaleList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 140
    invoke-virtual {v11, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 143
    .end local v12    # "i":I
    :cond_1
    if-eqz v8, :cond_2

    .line 144
    sget-object v12, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "appCurrentLocale: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    :cond_2
    sget-object v12, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    const-string v13, "appCurrentLocale is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v11    # "systemLangList":Landroid/os/LocaleList;
    :cond_3
    if-nez v4, :cond_4

    .line 150
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v11

    .line 151
    .local v11, "userLocales":Landroid/os/LocaleList;
    invoke-virtual {v11}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "langTags":[Ljava/lang/String;
    invoke-static {v7, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 149
    .end local v11    # "userLocales":Landroid/os/LocaleList;
    .end local v12    # "langTags":[Ljava/lang/String;
    :cond_4
    :goto_2
    nop

    .line 155
    :goto_3
    if-eqz v10, :cond_6

    .line 156
    invoke-static {v1, v7, v3, v4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 158
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    if-gt v11, v6, :cond_7

    .line 159
    if-eqz v2, :cond_5

    iget-object v11, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    if-ne v11, v6, :cond_5

    .line 160
    iget-object v6, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v2, v6}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 162
    :cond_5
    return v9

    .line 165
    :cond_6
    const/4 v11, 0x0

    invoke-static {v1, v7, v11, v4}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 168
    :cond_7
    sget-object v11, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mLocaleList size:  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 172
    if-eqz v8, :cond_8

    if-nez v10, :cond_8

    .line 173
    iget-object v11, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_8
    nop

    .line 177
    invoke-static {v1, v5}, Lcom/android/internal/app/AppLocaleStore;->getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v11

    .line 178
    .local v11, "result":Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    iget-object v12, v11, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v13, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    if-eq v12, v13, :cond_a

    iget-object v12, v11, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v13, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    if-ne v12, v13, :cond_9

    goto :goto_4

    :cond_9
    move v12, v9

    goto :goto_5

    :cond_a
    :goto_4
    move v12, v6

    .line 183
    .local v12, "shouldShowList":Z
    :goto_5
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->getSystemCurrentLocaleInfo()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 184
    .local v14, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v8, :cond_c

    .line 185
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    move v9, v6

    .line 186
    .local v9, "isNotCurrentLocale":Z
    :goto_8
    if-nez v10, :cond_d

    if-eqz v9, :cond_d

    .line 187
    iget-object v15, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v9    # "isNotCurrentLocale":Z
    .end local v14    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_d
    const/4 v9, 0x0

    goto :goto_6

    .line 192
    :cond_e
    iget-object v9, v11, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v12, v9}, Lcom/android/internal/app/LocalePickerWithRegion;->filterTheLanguagesNotSupportedInApp(ZLjava/util/HashSet;)Ljava/util/Set;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 195
    sget-object v9, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mLocaleList after app-supported filter:  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-nez v10, :cond_10

    if-eqz v12, :cond_10

    .line 199
    iget-object v9, v0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v8, :cond_f

    move/from16 v16, v6

    goto :goto_9

    :cond_f
    const/16 v16, 0x0

    :goto_9
    invoke-static/range {v16 .. v16}, Lcom/android/internal/app/LocaleStore;->getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v11    # "result":Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .end local v12    # "shouldShowList":Z
    :cond_10
    return v6
.end method


# virtual methods
.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 235
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setHasOptionsMenu(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 243
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    .line 247
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 248
    .local v0, "countryMode":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 249
    .local v1, "sortingLocale":Ljava/util/Locale;
    :goto_1
    new-instance v2, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAppPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 250
    new-instance v2, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {v2, v1, v0}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    .line 252
    .local v2, "comp":Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    .line 253
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/LocalePickerWithRegion;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 339
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_3

    .line 340
    const/high16 v0, 0x1140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 342
    const v0, 0x1020386

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 343
    .local v0, "searchMenuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAppPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_0

    .line 344
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 347
    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 348
    const v2, 0x104085d

    invoke-virtual {p0, v2}, Lcom/android/internal/app/LocalePickerWithRegion;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 353
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 354
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 356
    iget-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 365
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iget v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 367
    .end local v0    # "searchMenuItem":Landroid/view/MenuItem;
    :cond_3
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 311
    nop

    .line 312
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 314
    .local v0, "locale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v7

    .line 315
    .local v7, "isSystemLocale":Z
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 317
    .local v8, "isRegionLocale":Z
    if-nez v7, :cond_3

    if-eqz v8, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    nop

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean v4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object v5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAppPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 323
    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v1

    .line 326
    .local v1, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    .line 328
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_2

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_2

    .line 318
    .end local v1    # "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    if-eqz v1, :cond_4

    .line 319
    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 321
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 335
    :goto_2
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 268
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 270
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 271
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onPause()V
    .locals 4

    .line 291
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 296
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_0

    .line 298
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 304
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 305
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 306
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_1
    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 307
    return-void
.end method

.method public whitelist onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 379
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onResume()V
    .locals 2

    .line 278
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 287
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 258
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public blacklist setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0
    .param p1, "onActionExpandListener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 386
    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 387
    return-void
.end method
