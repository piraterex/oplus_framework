.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sFullyInitialized:Z

.field private static final blacklist sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    .line 38
    const-class v0, Lcom/android/internal/app/LocaleStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 317
    if-nez p0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    return-void

    .line 325
    :cond_1
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 326
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 330
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_2
    goto :goto_0

    .line 331
    :cond_3
    return-void
.end method

.method public static greylist fillCache(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    if-eqz v0, :cond_0

    .line 336
    return-void

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 341
    .local v0, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 343
    .local v1, "isInDeveloperMode":Z
    :goto_0
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_1
    const/4 v7, 0x0

    if-ge v6, v5, :cond_6

    aget-object v8, v4, v6

    .line 344
    .local v8, "localeId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 347
    new-instance v9, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v9, v8, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 349
    .local v9, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 350
    if-eqz v1, :cond_4

    .line 351
    invoke-virtual {v9, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 352
    invoke-static {v9, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 353
    invoke-static {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v10

    or-int/2addr v10, v2

    invoke-static {v9, v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 360
    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 361
    invoke-static {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v10

    or-int/2addr v10, v2

    invoke-static {v9, v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 363
    :cond_3
    sget-object v10, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v11

    .line 365
    .local v11, "parent":Ljava/util/Locale;
    if-eqz v11, :cond_4

    .line 366
    invoke-virtual {v11}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    .line 367
    .local v12, "parentId":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 368
    new-instance v13, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v13, v11, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v8    # "localeId":Ljava/lang/String;
    .end local v9    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v11    # "parent":Ljava/util/Locale;
    .end local v12    # "parentId":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 345
    .restart local v8    # "localeId":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/util/IllformedLocaleException;

    const-string v3, "Bad locale entry in locale_config.xml"

    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 375
    .local v4, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-ge v3, v6, :cond_a

    aget-object v8, v5, v3

    .line 376
    .restart local v8    # "localeId":Ljava/lang/String;
    new-instance v9, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v9, v8, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 377
    .restart local v9    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 379
    .local v10, "country":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 380
    const/4 v11, 0x0

    .line 381
    .local v11, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v12, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 382
    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_3

    .line 384
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "langScriptCtry":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 386
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 389
    .end local v13    # "langScriptCtry":Ljava/lang/String;
    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 390
    invoke-static {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v12

    or-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 393
    .end local v11    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_9
    invoke-static {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v8    # "localeId":Ljava/lang/String;
    .end local v9    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v10    # "country":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 396
    :cond_a
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 397
    .local v5, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 398
    .end local v5    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_4

    .line 400
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 402
    sput-boolean v2, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 403
    return-void
.end method

.method public static blacklist getAppCurrentLocaleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 261
    return-object v0

    .line 264
    :cond_0
    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    .line 266
    .local v1, "localeManager":Landroid/app/LocaleManager;
    if-nez v1, :cond_1

    .line 267
    move-object v2, v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 268
    .local v2, "localeList":Landroid/os/LocaleList;
    :goto_0
    if-nez v2, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 270
    .local v3, "locale":Ljava/util/Locale;
    :goto_1
    if-eqz v3, :cond_3

    .line 271
    new-instance v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v4, v3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 272
    .local v4, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    or-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 273
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return-object v4

    .line 278
    .end local v2    # "localeList":Landroid/os/LocaleList;
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3
    goto :goto_2

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return-object v0
.end method

.method private static blacklist getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .locals 3
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    .line 406
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 407
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 408
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 409
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    .line 410
    :cond_3
    return v1
.end method

.method public static greylist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 423
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 424
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "parentId":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 427
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    sget-object v2, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 428
    .local v3, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p1, v3, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v4

    .line 429
    .local v4, "level":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 430
    if-eqz p2, :cond_1

    .line 431
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 432
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 435
    :cond_1
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$misSuggestionOfType(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 438
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v3    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v4    # "level":I
    :cond_3
    :goto_2
    goto :goto_1

    .line 443
    :cond_4
    return-object v1
.end method

.method public static greylist getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 448
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 452
    .local v2, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    .end local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 456
    .restart local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_0
    return-object v2
.end method

.method private static blacklist getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 216
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "iso":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v2    # "iso":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static blacklist getSystemCurrentLocaleInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "localeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    .line 289
    .local v1, "systemLangList":Landroid/os/LocaleList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 290
    new-instance v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 291
    .local v3, "systemLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v4

    const/4 v5, 0x1

    or-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 292
    invoke-static {v3, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 293
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v3    # "systemLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 3
    .param p0, "hasAppLanguage"    # Z

    .line 303
    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 304
    .local v0, "systemDefaultInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 305
    if-eqz p0, :cond_0

    .line 306
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 308
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 309
    return-object v0
.end method

.method public static blacklist updateSimCountries(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 246
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 248
    .local v0, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 253
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 256
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method
