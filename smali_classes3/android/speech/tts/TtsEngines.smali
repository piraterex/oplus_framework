.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOCALE_DELIMITER_NEW:Ljava/lang/String; = "_"

.field private static final greylist-max-o LOCALE_DELIMITER_OLD:Ljava/lang/String; = "-"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TtsEngines"

.field private static final greylist-max-o XML_TAG_NAME:Ljava/lang/String; = "tts-engine"

.field private static final greylist-max-o sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 87
    .local v5, "language":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 88
    :catch_0
    move-exception v6

    .line 89
    .local v6, "e":Ljava/util/MissingResourceException;
    nop

    .line 85
    .end local v5    # "language":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/MissingResourceException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v1, "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 97
    .local v5, "country":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_3

    .line 98
    :catch_1
    move-exception v6

    .line 99
    .restart local v6    # "e":Ljava/util/MissingResourceException;
    nop

    .line 95
    .end local v5    # "country":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/MissingResourceException;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 102
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    .line 103
    .end local v0    # "normalizeLanguage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "normalizeCountry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private greylist-max-o getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 4
    .param p1, "resolve"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 282
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 283
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_1

    .line 284
    new-instance v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v1}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    .line 287
    .local v1, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 288
    invoke-virtual {v0, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 289
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result v3

    iput v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    .line 291
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    .line 292
    invoke-direct {p0, v0}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    .line 293
    return-object v1

    .line 296
    .end local v1    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .line 182
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 183
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static greylist normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p0, "ttsLocale"    # Ljava/util/Locale;

    .line 447
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    sget-object v1, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 450
    .local v1, "normalizedLanguage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 451
    move-object v0, v1

    .line 455
    .end local v1    # "normalizedLanguage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    sget-object v2, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    .local v2, "normalizedCountry":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 459
    move-object v1, v2

    .line 462
    .end local v2    # "normalizedCountry":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static greylist-max-o parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "prefValue"    # Ljava/lang/String;
    .param p1, "engineName"    # Ljava/lang/String;

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 502
    return-object v1

    .line 505
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "prefValues":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 508
    .local v5, "value":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 509
    .local v6, "delimiter":I
    if-lez v6, :cond_1

    .line 510
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 511
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 507
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "delimiter":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    :cond_2
    return-object v1
.end method

.method private greylist-max-o settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 10
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 234
    const-string v0, ":"

    const-string v1, "Error parsing metadata for "

    const-string v2, "TtsEngines"

    const/4 v3, 0x0

    .line 236
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.speech.tts"

    invoke-virtual {p1, p2, v5}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 237
    if-nez v3, :cond_1

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No meta-data found for :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    nop

    .line 275
    if-eqz v3, :cond_0

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 239
    :cond_0
    return-object v4

    .line 242
    :cond_1
    :try_start_1
    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 245
    .local v5, "res":Landroid/content/res/Resources;
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_6

    .line 246
    const/4 v6, 0x2

    if-ne v7, v6, :cond_2

    .line 247
    const-string/jumbo v6, "tts-engine"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " uses unknown tag :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 248
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    nop

    .line 275
    if-eqz v3, :cond_3

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 250
    :cond_3
    return-object v4

    .line 253
    :cond_4
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 254
    .local v6, "attrs":Landroid/util/AttributeSet;
    sget-object v8, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 256
    .local v8, "array":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "settings":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    nop

    .line 275
    if-eqz v3, :cond_5

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 260
    :cond_5
    return-object v9

    .line 264
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "array":Landroid/content/res/TypedArray;
    .end local v9    # "settings":Ljava/lang/String;
    :cond_6
    nop

    .line 275
    if-eqz v3, :cond_7

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 264
    :cond_7
    return-object v4

    .line 275
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "type":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v5

    .line 272
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    nop

    .line 275
    if-eqz v3, :cond_8

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 273
    :cond_8
    return-object v4

    .line 268
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 269
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    nop

    .line 275
    if-eqz v3, :cond_9

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 270
    :cond_9
    return-object v4

    .line 265
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 266
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load resources for : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    nop

    .line 275
    if-eqz v3, :cond_a

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 267
    :cond_a
    return-object v4

    .line 275
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v3, :cond_b

    .line 276
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 278
    :cond_b
    throw v0
.end method

.method public static greylist-max-o toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 478
    const-string v0, ""

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 483
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 484
    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    return-object v1

    .line 487
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Ljava/util/MissingResourceException;
    const-string v3, "eng"

    const-string v4, "USA"

    filled-new-array {v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "list"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v0, "newPrefList":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 555
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "prefValues":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 559
    .local v3, "first":Z
    const/4 v4, 0x0

    .line 560
    .local v4, "found":Z
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x2c

    if-ge v7, v5, :cond_5

    aget-object v9, v1, v7

    .line 561
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 562
    .local v10, "delimiter":I
    if-lez v10, :cond_4

    .line 563
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 564
    if-eqz v3, :cond_1

    .line 565
    const/4 v3, 0x0

    goto :goto_1

    .line 567
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :goto_1
    const/4 v4, 0x1

    .line 570
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 572
    :cond_2
    if-eqz v3, :cond_3

    .line 573
    const/4 v3, 0x0

    goto :goto_2

    .line 575
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    :goto_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "delimiter":I
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 583
    :cond_5
    if-nez v4, :cond_6

    .line 586
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .end local v1    # "prefValues":[Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v4    # "found":Z
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist-max-o getDefaultEngine()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_synth"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "engine":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 149
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    return-object v3

    .line 152
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public greylist getEngines()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 163
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 165
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 168
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v3, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 171
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v0}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v6

    .line 172
    .local v6, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    if-eqz v6, :cond_1

    .line 173
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    :cond_1
    goto :goto_0

    .line 176
    :cond_2
    sget-object v4, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    return-object v3
.end method

.method public greylist-max-o getHighestRankedEngineName()Ljava/lang/String;
    .locals 3

    .line 126
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v1

    .line 132
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "engineName"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "prefValue"    # Ljava/lang/String;

    .line 343
    invoke-static {p2, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 352
    :cond_0
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 353
    .local v1, "result":Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning en_US instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TtsEngines"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 360
    :cond_1
    return-object v1
.end method

.method public greylist getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "engine"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const v2, 0x10080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 211
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 212
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    .line 213
    invoke-direct {p0, v3, v0}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "settings":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 215
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    return-object v5

    .line 222
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v4    # "settings":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public greylist-max-o isEngineInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engine"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 191
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public greylist-max-o isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engineName"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public greylist parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 11
    .param p1, "localeString"    # Ljava/lang/String;

    .line 386
    const-string v0, ""

    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .local v1, "country":Ljava/lang/String;
    const-string v2, ""

    .line 387
    .local v2, "variant":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Failed to convert "

    const-string v6, "TtsEngines"

    if-nez v3, :cond_3

    .line 388
    const-string v3, "[-_]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "split":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 391
    array-length v7, v3

    if-nez v7, :cond_0

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to a valid Locale object. Only separators"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-object v4

    .line 396
    :cond_0
    array-length v7, v3

    const/4 v8, 0x3

    if-le v7, v8, :cond_1

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to a valid Locale object. Too many separators"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v4

    .line 401
    :cond_1
    array-length v7, v3

    const/4 v9, 0x2

    if-lt v7, v9, :cond_2

    .line 402
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_2
    array-length v7, v3

    if-lt v7, v8, :cond_3

    .line 405
    aget-object v2, v3, v9

    .line 410
    .end local v3    # "split":[Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/speech/tts/TtsEngines;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 411
    .local v3, "normalizedLanguage":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 412
    move-object v0, v3

    .line 415
    :cond_4
    sget-object v7, Landroid/speech/tts/TtsEngines;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 416
    .local v7, "normalizedCountry":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 417
    move-object v1, v7

    .line 423
    :cond_5
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v8, "result":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    .line 426
    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    return-object v8

    .line 428
    :catch_0
    move-exception v9

    .line 429
    .local v9, "e":Ljava/util/MissingResourceException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " to a valid Locale object."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v4
.end method

.method public declared-synchronized greylist updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .param p1, "engineName"    # Ljava/lang/String;
    .param p2, "newLocale"    # Ljava/util/Locale;

    monitor-enter p0

    .line 527
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "prefList":Ljava/lang/String;
    nop

    .line 535
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local p0    # "this":Landroid/speech/tts/TtsEngines;
    :cond_0
    const-string v1, ""

    .line 534
    :goto_0
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "newPrefList":Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tts_default_locale"

    .line 540
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 526
    .end local v0    # "prefList":Ljava/lang/String;
    .end local v1    # "newPrefList":Ljava/lang/String;
    .end local p1    # "engineName":Ljava/lang/String;
    .end local p2    # "newLocale":Ljava/util/Locale;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
