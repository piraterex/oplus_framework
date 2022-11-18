.class Lcom/android/internal/app/AppLocaleStore;
.super Ljava/lang/Object;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/android/internal/app/AppLocaleStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist filterNotMatchingLocale(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 111
    .local p0, "appSupportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    .local p1, "assetLocale":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    .line 112
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/app/AppLocaleStore$$ExternalSyntheticLambda1;-><init>()V

    .line 113
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 111
    return-object v0
.end method

.method public static blacklist getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "localeConfig":Landroid/app/LocaleConfig;
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 40
    .local v1, "localeStatus":Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v2, "appSupportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->getAssetLocales(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 44
    .local v3, "assetLocale":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/app/LocaleConfig;

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/LocaleConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v5

    .line 46
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not found the package name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_7

    .line 50
    invoke-virtual {v0}, Landroid/app/LocaleConfig;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 51
    invoke-virtual {v0}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 52
    .local v5, "packageLocaleList":Landroid/os/LocaleList;
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->hasInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 53
    invoke-static {p0, p1}, Lcom/android/internal/app/AppLocaleStore;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    nop

    .line 55
    .local v4, "shouldFilterNotMatchingLocale":Z
    :goto_1
    sget-object v6, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterNonMatchingLocale. , shouldFilterNotMatchingLocale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", assetLocale size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 57
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", packageLocaleList size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 58
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 61
    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 63
    .end local v6    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    .line 64
    invoke-static {v2, v3}, Lcom/android/internal/app/AppLocaleStore;->filterNotMatchingLocale(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v2

    .line 67
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 68
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    goto :goto_3

    .line 70
    :cond_3
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 72
    .end local v4    # "shouldFilterNotMatchingLocale":Z
    .end local v5    # "packageLocaleList":Landroid/os/LocaleList;
    :cond_4
    :goto_3
    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/app/LocaleConfig;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 73
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 74
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 75
    move-object v2, v3

    goto :goto_4

    .line 77
    :cond_6
    sget-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 81
    :cond_7
    :goto_4
    sget-object v4, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAppSupportedLocales(). package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", appSupportedLocales:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v4, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    invoke-direct {v4, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;-><init>(Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;Ljava/util/HashSet;)V

    return-object v4
.end method

.method private static blacklist getAssetLocales(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 91
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x20000

    .line 92
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v2, "locales":[Ljava/lang/String;
    const-string v3, "["

    if-nez v2, :cond_0

    .line 95
    :try_start_1
    sget-object v4, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] locales are null."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    :cond_0
    array-length v4, v2

    if-gtz v4, :cond_1

    .line 97
    sget-object v4, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] locales length is 0."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 100
    .local v5, "language":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    nop

    .end local v5    # "language":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "locales":[Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not found the package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    return-object v0
.end method

.method private static blacklist hasInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v1, "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 133
    .end local v1    # "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installer info not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private static blacklist isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 144
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/app/AppLocaleStore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application info not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method static synthetic blacklist lambda$filterNotMatchingLocale$0(Ljava/util/HashSet;Ljava/util/Locale;)Z
    .locals 1
    .param p0, "assetLocale"    # Ljava/util/HashSet;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 112
    invoke-static {p1, p0}, Lcom/android/internal/app/AppLocaleStore;->matchLanguageInSet(Ljava/util/Locale;Ljava/util/HashSet;)Z

    move-result v0

    return v0
.end method

.method private static blacklist matchLanguageInSet(Ljava/util/Locale;Ljava/util/HashSet;)Z
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)Z"
        }
    .end annotation

    .line 117
    .local p1, "localesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 121
    .local v2, "l":Ljava/util/Locale;
    invoke-static {v2, p0}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    return v1

    .line 124
    .end local v2    # "l":Ljava/util/Locale;
    :cond_1
    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
