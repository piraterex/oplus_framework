.class final Lcom/android/internal/content/om/OverlayConfigParser;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;,
        Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_DEFAULT_FILENAME:Ljava/lang/String; = "config/config.xml"

.field private static final blacklist CONFIG_DIRECTORY:Ljava/lang/String; = "config"

.field static final blacklist DEFAULT_ENABLED_STATE:Z = false

.field static final blacklist DEFAULT_MUTABILITY:Z = true

.field private static final blacklist MAXIMUM_MERGE_DEPTH:I = 0x5


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "partition"    # Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .param p1, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation

    .line 201
    .local p2, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    .local p3, "activeApexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 205
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, "apex":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/apex/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/overlay/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 207
    .end local v1    # "apex":Ljava/lang/String;
    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 211
    return-object v1

    .line 214
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config/config.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    return-object v1

    .line 219
    :cond_3
    new-instance v2, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext-IA;)V

    move-object v1, v2

    .line 220
    .local v1, "parsingContext":Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 221
    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .locals 9
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .param p4, "parsingContext"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 277
    .local p3, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "path"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 283
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v3, :cond_3

    .line 290
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {p4, v6}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    const/4 v6, 0x5

    if-eq v3, v6, :cond_2

    .line 299
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    const-string v7, "config"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 301
    .local v3, "configDirectory":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .local v6, "includedConfigFile":Ljava/io/File;
    nop

    .line 308
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    invoke-static {v3, v6}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 322
    invoke-static {v6, p2, p3, p4}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 323
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p4, v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    .line 324
    return-void

    .line 315
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 318
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    aput-object v6, v4, v2

    .line 319
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 316
    const-string v1, "Merged file %s outside of configuration directory in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 309
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    .line 311
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 310
    const-string v1, "Merged configuration file %s does not exist in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 302
    .end local v3    # "configDirectory":Ljava/io/File;
    .end local v6    # "includedConfigFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    .line 305
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 304
    const-string v1, "Couldn\'t find or open merged configuration file %s in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 291
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 293
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 291
    const-string v1, "Maximum <merge> depth exceeded in %s at %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 284
    const-string v1, "Path %s must be relative to the directory containing overlay configurations  files in %s at %s "

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<merge> without path in %s at %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 280
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 279
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .locals 17
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .param p4, "parsingContext"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 351
    .local p3, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez v2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eq v5, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    const-string/jumbo v6, "scanner and packageManagerOverlayInfos cannot be both null or both non-null"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 354
    const/4 v5, 0x0

    const-string/jumbo v6, "package"

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "packageName":Ljava/lang/String;
    const/4 v7, 0x2

    if-eqz v6, :cond_e

    .line 362
    const/4 v8, 0x0

    .line 363
    .local v8, "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    const/4 v9, 0x3

    const-string v10, " is ignored."

    const-string v11, " in partition "

    const-string/jumbo v12, "overlay "

    const-string v13, "OverlayConfig"

    if-eqz v1, :cond_5

    .line 364
    invoke-virtual {v1, v6}, Lcom/android/internal/content/om/OverlayScanner;->getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v8

    .line 365
    if-nez v8, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v14

    .line 366
    invoke-virtual {v1, v6, v14}, Lcom/android/internal/content/om/OverlayScanner;->isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v4

    .line 368
    invoke-virtual {v4}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 370
    :cond_3
    if-eqz v8, :cond_4

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v10

    iget-object v11, v8, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v14, v8

    goto :goto_3

    .line 371
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v3

    .line 373
    invoke-virtual {v3}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v3

    aput-object v3, v10, v4

    aput-object p0, v10, v7

    .line 374
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v9

    .line 372
    const-string/jumbo v3, "overlay %s not present in partition %s in %s at %s"

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 380
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_6

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v4

    .line 382
    invoke-virtual {v4}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 380
    :cond_6
    move-object v14, v8

    .line 387
    .end local v8    # "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .local v14, "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :goto_3
    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 394
    const/4 v8, 0x0

    .line 395
    .local v8, "isEnabled":Z
    const-string v9, "enabled"

    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, "enabled":Ljava/lang/String;
    const-string v9, "false"

    if-eqz v15, :cond_7

    .line 397
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    move v8, v10

    move/from16 v16, v8

    goto :goto_4

    .line 396
    :cond_7
    move/from16 v16, v8

    .line 400
    .end local v8    # "isEnabled":Z
    .local v16, "isEnabled":Z
    :goto_4
    const/4 v8, 0x1

    .line 401
    .local v8, "isMutable":Z
    const-string/jumbo v10, "mutable"

    invoke-interface {v0, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "mutable":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 403
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v4

    move v8, v9

    .line 404
    if-nez v8, :cond_9

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    .line 405
    :cond_8
    new-instance v9, Ljava/lang/IllegalStateException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    .line 408
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    .line 405
    const-string v3, "immutable overlays must precede mutable overlays: found in %s at %s"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 412
    :cond_9
    :goto_5
    move v3, v8

    goto :goto_6

    .line 402
    :cond_a
    move v3, v8

    .line 412
    .end local v8    # "isMutable":Z
    .local v3, "isMutable":Z
    :goto_6
    if-eqz v3, :cond_b

    .line 413
    move-object/from16 v12, p4

    invoke-static {v12, v4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)V

    goto :goto_7

    .line 414
    :cond_b
    move-object/from16 v12, p4

    if-nez v16, :cond_c

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found default-disabled immutable overlay "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_c
    :goto_7
    new-instance v4, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v7

    iget-object v11, v7, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    move-object v7, v4

    move-object v8, v6

    move/from16 v9, v16

    move v10, v3

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;)V

    .line 422
    .local v4, "Config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    return-void

    .line 388
    .end local v3    # "isMutable":Z
    .end local v4    # "Config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    .end local v5    # "mutable":Ljava/lang/String;
    .end local v15    # "enabled":Ljava/lang/String;
    .end local v16    # "isEnabled":Z
    :cond_d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object p0, v8, v4

    .line 391
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    .line 389
    const-string/jumbo v3, "overlay %s configured multiple times in a single partition in %s at %s"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    .end local v14    # "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    .line 357
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    .line 356
    const-string v3, "\"<overlay> without package in %s at %s"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static blacklist readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .locals 9
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .param p3, "parsingContext"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 229
    .local p2, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    const-string v0, "OverlayConfig"

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .local v1, "configReader":Ljava/io/FileReader;
    nop

    .line 236
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 237
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 238
    const-string v3, "config"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 240
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 241
    .local v3, "depth":I
    :goto_0
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v6, "merge"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "overlay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v8

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 253
    goto :goto_2

    .line 249
    :pswitch_0
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 251
    goto :goto_3

    .line 245
    :pswitch_1
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 247
    goto :goto_3

    .line 253
    :goto_2
    const-string v5, "Tag %s is unknown in %s at %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    aput-object p0, v6, v8

    const/4 v7, 0x2

    .line 254
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 253
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .end local v4    # "name":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 261
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "depth":I
    :cond_1
    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "Got exception parsing overlay configuration."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 262
    throw v0

    .line 230
    .end local v1    # "configReader":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find or open overlay configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x410bbbb0 -> :sswitch_1
        0x62fa438 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
