.class public Landroid/content/pm/dex/DexMetadataHelper;
.super Ljava/lang/Object;
.source "DexMetadataHelper.java"


# static fields
.field public static final blacklist DEBUG:Z

.field private static final greylist-max-o DEX_METADATA_FILE_EXTENSION:Ljava/lang/String; = ".dm"

.field private static final blacklist PROPERTY_DM_FSVERITY_REQUIRED:Ljava/lang/String; = "pm.dexopt.dm.require_fsverity"

.field private static final blacklist PROPERTY_DM_JSON_MANIFEST_REQUIRED:Ljava/lang/String; = "pm.dexopt.dm.require_manifest"

.field public static final blacklist TAG:Ljava/lang/String; = "DexMetadataHelper"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 56
    const-string v0, "DexMetadataHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "codePath"    # Ljava/lang/String;

    .line 156
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".apk"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corrupted package. Code path is not an apk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "targetFile"    # Ljava/io/File;

    .line 171
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0
.end method

.method public static greylist-max-o buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 137
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 138
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "codePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "dexMetadataPath":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v2    # "codePath":Ljava/lang/String;
    .end local v3    # "dexMetadataPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static greylist-max-o findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "targetFile"    # Ljava/io/File;

    .line 106
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "dexMetadataPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "dexMetadataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private static blacklist getPackageDexMetadata(Landroid/content/pm/parsing/PackageLite;)Ljava/util/Map;
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageDexMetadataSize(Landroid/content/pm/parsing/PackageLite;)J
    .locals 7
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;

    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "sizeBytes":J
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadata(Landroid/content/pm/parsing/PackageLite;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 91
    .local v2, "dexMetadataList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 92
    .local v4, "dexMetadata":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 93
    .end local v4    # "dexMetadata":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_0
    return-wide v0
.end method

.method public static greylist-max-o isDexMetadataFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isDexMetadataPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 74
    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFsVerityRequired()Z
    .locals 2

    .line 81
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "pm.dexopt.dm.require_fsverity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 81
    :goto_0
    return v1
.end method

.method public static blacklist validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "dmaPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J

    .line 183
    nop

    .line 184
    const-string/jumbo v0, "pm.dexopt.dm.require_manifest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 183
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v2 .. v7}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "dmaPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "requireManifest"    # Z

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    sget-boolean v1, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateDexMetadataFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexMetadataHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :try_start_0
    new-instance v5, Landroid/util/jar/StrictJarFile;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0    # "jarFile":Landroid/util/jar/StrictJarFile;
    .local v5, "jarFile":Landroid/util/jar/StrictJarFile;
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-wide v7, p3

    move v9, p5

    :try_start_1
    invoke-static/range {v3 .. v9}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataManifest(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/util/jar/StrictJarFile;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    nop

    .line 206
    :try_start_2
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 199
    :goto_0
    return-object v0

    .line 201
    :catch_1
    move-exception v0

    goto :goto_1

    .line 204
    .end local v5    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v0    # "jarFile":Landroid/util/jar/StrictJarFile;
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto :goto_3

    .line 201
    :catch_2
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    .line 202
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "jarFile":Landroid/util/jar/StrictJarFile;
    :goto_1
    const/16 v1, -0x75

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    if-eqz v5, :cond_1

    .line 206
    :try_start_4
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 208
    goto :goto_2

    .line 207
    :catch_3
    move-exception v2

    .line 202
    :cond_1
    :goto_2
    return-object v1

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v5, :cond_2

    .line 206
    :try_start_5
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 208
    goto :goto_4

    .line 207
    :catch_4
    move-exception v1

    .line 210
    :cond_2
    :goto_4
    throw v0
.end method

.method private static blacklist validateDexMetadataManifest(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/util/jar/StrictJarFile;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;
    .locals 19
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "dmaPath"    # Ljava/lang/String;
    .param p2, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "requireManifest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    const-string/jumbo v0, "validateDexMetadataManifest: "

    const-string v7, "DexMetadataHelper"

    const/4 v8, 0x0

    if-nez p6, :cond_1

    .line 218
    sget-boolean v9, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " manifest.json check skipped"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-interface {v1, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    const-string/jumbo v9, "manifest.json"

    invoke-virtual {v3, v9}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 226
    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    const/16 v10, -0x75

    if-nez v9, :cond_2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing manifest.json in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 230
    :cond_2
    invoke-virtual {v3, v9}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 234
    .local v11, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Landroid/util/JsonReader;

    new-instance v13, Ljava/io/InputStreamReader;

    const-string v14, "UTF-8"

    invoke-direct {v13, v11, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .local v12, "reader":Landroid/util/JsonReader;
    nop

    .line 239
    const/4 v13, 0x0

    .line 240
    .local v13, "jsonPackageName":Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 242
    .local v14, "jsonVersionCode":J
    invoke-virtual {v12}, Landroid/util/JsonReader;->beginObject()V

    .line 243
    :goto_0
    invoke-virtual {v12}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 244
    invoke-virtual {v12}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v10, "packageName"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 246
    invoke-virtual {v12}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .end local v13    # "jsonPackageName":Ljava/lang/String;
    .local v10, "jsonPackageName":Ljava/lang/String;
    goto :goto_1

    .line 247
    .end local v10    # "jsonPackageName":Ljava/lang/String;
    .restart local v13    # "jsonPackageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "versionCode"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 248
    invoke-virtual {v12}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v14

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {v12}, Landroid/util/JsonReader;->skipValue()V

    .line 252
    .end local v8    # "name":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    const/16 v10, -0x75

    goto :goto_0

    .line 253
    :cond_5
    invoke-virtual {v12}, Landroid/util/JsonReader;->endObject()V

    .line 255
    const-string/jumbo v8, "manifest.json in "

    if-eqz v13, :cond_a

    const-wide/16 v17, -0x1

    cmp-long v10, v14, v17

    if-nez v10, :cond_6

    goto/16 :goto_2

    .line 261
    :cond_6
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v3, ", expected: "

    if-nez v10, :cond_7

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " has invalid packageName: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x75

    invoke-interface {v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 267
    :cond_7
    cmp-long v10, v5, v14

    if-eqz v10, :cond_8

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " has invalid versionCode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x75

    invoke-interface {v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 273
    :cond_8
    sget-boolean v3, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": successful"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_9
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 256
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is missing \'packageName\' and/or \'versionCode\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x75

    invoke-interface {v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 235
    .end local v12    # "reader":Landroid/util/JsonReader;
    .end local v13    # "jsonPackageName":Ljava/lang/String;
    .end local v14    # "jsonVersionCode":J
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening manifest.json in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, -0x75

    invoke-interface {v1, v7, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o validateDexPaths([Ljava/lang/String;)V
    .locals 8
    .param p0, "paths"    # [Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "apks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 291
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "unmatchedDmFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 297
    aget-object v3, p0, v2

    .line 298
    .local v3, "dmPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, "valid":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_3

    .line 301
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    const/4 v4, 0x1

    .line 303
    goto :goto_3

    .line 300
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 306
    .end local v5    # "j":I
    :cond_3
    :goto_3
    if-nez v4, :cond_4

    .line 307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v3    # "dmPath":Ljava/lang/String;
    .end local v4    # "valid":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 314
    return-void

    .line 312
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmatched .dm files: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
