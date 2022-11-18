.class public Lcom/android/internal/content/om/OverlayScanner;
.super Ljava/lang/Object;
.source "OverlayScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    }
.end annotation


# instance fields
.field private final blacklist mExcludedOverlayPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mParsedOverlayInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final blacklist getAllParsedInfos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    return-object v0
.end method

.method final blacklist isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "overlayPartition"    # Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 127
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .line 128
    invoke-virtual {p2, v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x1

    return v2

    .line 125
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .locals 17
    .param p1, "overlayApk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;)",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;"
        }
    .end annotation

    .line 182
    .local p2, "outExcludedOverlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;>;"
    move-object/from16 v0, p1

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forParsingWithoutPlatformCompat()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 183
    .local v1, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v2, v0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 186
    .local v2, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 187
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    const-string v5, "OverlayConfig"

    const-string v6, "Got exception loading overlay."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-object v4

    .line 190
    :cond_0
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/ApkLite;

    .line 191
    .local v3, "apkLite":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 193
    return-object v4

    .line 195
    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyName()Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "propName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyValue()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "propValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v8, p2

    goto :goto_1

    .line 198
    :cond_3
    :goto_0
    invoke-static {v5, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 202
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v4

    .line 198
    :cond_4
    move-object/from16 v8, p2

    .line 205
    :goto_1
    new-instance v4, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v11

    .line 206
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v12

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->isOverlayIsStatic()Z

    move-result v13

    .line 207
    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getOverlayPriority()I

    move-result v14

    new-instance v15, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V

    .line 205
    return-object v4
.end method

.method public blacklist scanDir(Ljava/io/File;)V
    .locals 6
    .param p1, "partitionOverlayDir"    # Ljava/io/File;

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_2

    .line 152
    return-void

    .line 155
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 156
    aget-object v2, v0, v1

    .line 157
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 161
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 162
    goto :goto_1

    .line 165
    :cond_4
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/content/om/OverlayScanner;->parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v3

    .line 166
    .local v3, "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    if-nez v3, :cond_5

    .line 167
    goto :goto_1

    .line 170
    :cond_5
    iget-object v4, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_7
    return-void

    .line 142
    .end local v0    # "files":[Ljava/io/File;
    :cond_8
    :goto_2
    return-void
.end method
