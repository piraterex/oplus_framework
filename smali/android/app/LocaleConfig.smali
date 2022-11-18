.class public Landroid/app/LocaleConfig;
.super Ljava/lang/Object;
.source "LocaleConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocaleConfig$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_NOT_SPECIFIED:I = 0x1

.field public static final whitelist STATUS_PARSING_FAILED:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "LocaleConfig"

.field public static final whitelist TAG_LOCALE:Ljava/lang/String; = "locale"

.field public static final whitelist TAG_LOCALE_CONFIG:Ljava/lang/String; = "locale-config"


# instance fields
.field private blacklist mLocales:Landroid/os/LocaleList;

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const-string v0, "LocaleConfig"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "resId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    .local v2, "res":Landroid/content/res/Resources;
    :try_start_0
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getLocaleConfigRes()I

    move-result v3

    move v1, v3

    .line 99
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 100
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v3, v2}, Landroid/app/LocaleConfig;->parseLocaleConfig(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse XML configuration from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    goto :goto_1

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 102
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "The resource file pointed to by the given resource ID isn\'t found."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 108
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    nop

    .line 109
    :goto_1
    return-void
.end method

.method private blacklist parseLocaleConfig(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 116
    const-string v0, "locale-config"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 118
    .local v0, "outerDepth":I
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 119
    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v2, "localeNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 121
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "locale"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    sget-object v3, Lcom/android/internal/R$styleable;->LocaleConfig_Locale:[I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 124
    .local v3, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "nameAttr":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    .end local v3    # "attributes":Landroid/content/res/TypedArray;
    .end local v4    # "nameAttr":Ljava/lang/String;
    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 132
    :cond_1
    iput v4, p0, Landroid/app/LocaleConfig;->mStatus:I

    .line 133
    const-string v3, ","

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist getStatus()I
    .locals 1

    .line 166
    iget v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    return v0
.end method

.method public whitelist getSupportedLocales()Landroid/os/LocaleList;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method
