.class public Landroid/content/pm/parsing/ApkLiteParseUtils;
.super Ljava/lang/Object;
.source "ApkLiteParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final blacklist ANDROID_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final blacklist APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field private static final blacklist DEFAULT_MIN_SDK_VERSION:I = 0x1

.field private static final blacklist DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field private static final blacklist PARSE_COLLECT_CERTIFICATES:I = 0x20

.field private static final blacklist PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final blacklist PARSE_FRAMEWORK_RES_SPLITS:I = 0x100

.field private static final blacklist PARSE_IS_SYSTEM_DIR:I = 0x10

.field private static final blacklist SDK_CODENAMES:[Ljava/lang/String;

.field private static final blacklist SDK_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String; = "ApkLiteParseUtils"

.field private static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field private static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field private static final blacklist TAG_SDK_LIBRARY:Ljava/lang/String; = "sdk-library"

.field private static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;-><init>(Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator-IA;)V

    sput-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->sSplitNameComparator:Ljava/util/Comparator;

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_VERSION:I

    .line 92
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "baseApk"    # Landroid/content/pm/parsing/ApkLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Landroid/content/pm/parsing/ApkLite;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 242
    .local p3, "splitApks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "baseApk"    # Landroid/content/pm/parsing/ApkLite;
    .param p4, "apkRenamed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Landroid/content/pm/parsing/ApkLite;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 258
    .local p3, "splitApks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 259
    const/16 v2, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing base APK in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 263
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v15

    .line 265
    .local v15, "size":I
    const/4 v2, 0x0

    .line 266
    .local v2, "splitNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 267
    .local v3, "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 268
    .local v4, "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 269
    .local v5, "isFeatureSplits":[Z
    const/4 v6, 0x0

    .line 270
    .local v6, "usesSplitNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 271
    .local v7, "configForSplits":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 272
    .local v8, "splitCodePaths":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 273
    .local v9, "splitRevisionCodes":[I
    if-lez v15, :cond_3

    .line 274
    new-array v2, v15, [Ljava/lang/String;

    .line 275
    new-array v3, v15, [Ljava/util/Set;

    .line 276
    new-array v4, v15, [Ljava/util/Set;

    .line 277
    new-array v5, v15, [Z

    .line 278
    new-array v6, v15, [Ljava/lang/String;

    .line 279
    new-array v7, v15, [Ljava/lang/String;

    .line 280
    new-array v8, v15, [Ljava/lang/String;

    .line 281
    new-array v9, v15, [I

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    check-cast v2, [Ljava/lang/String;

    .line 284
    sget-object v10, Landroid/content/pm/parsing/ApkLiteParseUtils;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v2, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 286
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v15, :cond_2

    .line 287
    aget-object v11, v2, v10

    move-object/from16 v14, p3

    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/parsing/ApkLite;

    .line 288
    .local v11, "apk":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v12

    aput-object v12, v3, v10

    .line 289
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v12

    aput-object v12, v4, v10

    .line 290
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->getUsesSplitName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v10

    .line 291
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->isFeatureSplit()Z

    move-result v12

    aput-boolean v12, v5, v10

    .line 292
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->getConfigForSplit()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    .line 293
    if-eqz p4, :cond_1

    .line 294
    new-instance v12, Ljava/io/File;

    invoke-static {v11}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v12

    :goto_1
    aput-object v12, v8, v10

    .line 295
    invoke-virtual {v11}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v12

    aput v12, v9, v10

    .line 286
    .end local v11    # "apk":Landroid/content/pm/parsing/ApkLite;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v14, p3

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    goto :goto_2

    .line 273
    .end local v10    # "i":I
    :cond_3
    move-object/from16 v14, p3

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .line 299
    .end local v2    # "splitNames":[Ljava/lang/String;
    .end local v3    # "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "isFeatureSplits":[Z
    .end local v6    # "usesSplitNames":[Ljava/lang/String;
    .end local v7    # "configForSplits":[Ljava/lang/String;
    .end local v8    # "splitCodePaths":[Ljava/lang/String;
    .end local v9    # "splitRevisionCodes":[I
    .local v16, "splitNames":[Ljava/lang/String;
    .local v17, "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "isFeatureSplits":[Z
    .local v20, "usesSplitNames":[Ljava/lang/String;
    .local v21, "configForSplits":[Ljava/lang/String;
    .local v22, "splitCodePaths":[Ljava/lang/String;
    .local v23, "splitRevisionCodes":[I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    .line 300
    .local v24, "codePath":Ljava/lang/String;
    if-eqz p4, :cond_4

    .line 301
    new-instance v2, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v4, v2

    .line 302
    .local v4, "baseCodePath":Ljava/lang/String;
    new-instance v13, Landroid/content/pm/parsing/PackageLite;

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v12

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v5, p2

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object v1, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-direct/range {v2 .. v14}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 302
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 791
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 801
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isDeviceAdminReceiver(Landroid/content/res/XmlResourceParser;Z)Z
    .locals 7
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "applicationHasBindDeviceAdminPermission"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "permission"

    invoke-interface {p0, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "permission":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 624
    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    const/4 v0, 0x0

    return v0

    .line 628
    :cond_0
    const/4 v2, 0x0

    .line 629
    .local v2, "hasDeviceAdminReceiver":Z
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 631
    .local v3, "depth":I
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    .line 632
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 633
    :cond_2
    if-eq v5, v4, :cond_1

    const/4 v4, 0x4

    if-ne v5, v4, :cond_3

    .line 635
    goto :goto_0

    .line 637
    :cond_3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    if-eq v4, v6, :cond_4

    .line 639
    goto :goto_0

    .line 641
    :cond_4
    if-nez v2, :cond_1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 642
    const-string/jumbo v4, "name"

    invoke-interface {p0, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "name":Ljava/lang/String;
    const-string v6, "android.app.device_admin"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 645
    const/4 v2, 0x1

    .line 647
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 649
    :cond_6
    return v2
.end method

.method public static blacklist parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 71
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 405
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 406
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 411
    .local v5, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 412
    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseRequiredSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 413
    .local v6, "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 416
    :cond_1
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/util/Pair;

    .line 418
    .local v7, "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v0, -0x1

    const-string v8, "http://schemas.android.com/apk/res/android"

    const-string v9, "installLocation"

    invoke-interface {v2, v8, v9, v0}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 420
    .local v9, "installLocation":I
    const-string/jumbo v0, "versionCode"

    const/4 v10, 0x0

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v44

    .line 421
    .local v44, "versionCode":I
    const-string/jumbo v0, "versionCodeMajor"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v45

    .line 424
    .local v45, "versionCodeMajor":I
    const-string/jumbo v0, "revisionCode"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v46

    .line 425
    .local v46, "revisionCode":I
    const/4 v0, 0x0

    const-string v11, "coreApp"

    invoke-interface {v2, v0, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v47

    .line 426
    .local v47, "coreApp":Z
    const-string v11, "isolatedSplits"

    invoke-interface {v2, v8, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v48

    .line 428
    .local v48, "isolatedSplits":Z
    const-string v11, "isFeatureSplit"

    invoke-interface {v2, v8, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v49

    .line 430
    .local v49, "isFeatureSplit":Z
    const-string v11, "isSplitRequired"

    invoke-interface {v2, v8, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v50

    .line 432
    .local v50, "isSplitRequired":Z
    const-string v11, "configForSplit"

    invoke-interface {v2, v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 434
    .local v51, "configForSplit":Ljava/lang/String;
    const/4 v0, 0x0

    .line 435
    .local v0, "targetSdkVersion":I
    const/4 v11, 0x1

    .line 436
    .local v11, "minSdkVersion":I
    const/4 v12, 0x0

    .line 437
    .local v12, "debuggable":Z
    const/4 v13, 0x0

    .line 438
    .local v13, "profilableByShell":Z
    const/4 v14, 0x0

    .line 439
    .local v14, "multiArch":Z
    const/4 v15, 0x0

    .line 440
    .local v15, "use32bitAbi":Z
    const/16 v16, 0x1

    .line 441
    .local v16, "extractNativeLibs":Z
    const/16 v17, 0x0

    .line 442
    .local v17, "useEmbeddedDex":Z
    const/16 v18, 0x0

    .line 443
    .local v18, "usesSplitName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 444
    .local v19, "targetPackage":Ljava/lang/String;
    const/16 v20, 0x0

    .line 445
    .local v20, "overlayIsStatic":Z
    const/16 v21, 0x0

    .line 446
    .local v21, "overlayPriority":I
    const/16 v22, 0x0

    .line 448
    .local v22, "rollbackDataPolicy":I
    const/16 v23, 0x0

    .line 449
    .local v23, "requiredSystemPropertyName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 451
    .local v24, "requiredSystemPropertyValue":Ljava/lang/String;
    const/16 v25, 0x0

    .line 453
    .local v25, "hasDeviceAdminReceiver":Z
    const/16 v26, 0x0

    .line 457
    .local v26, "isSdkLibrary":Z
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v27

    const/4 v10, 0x1

    move-object/from16 v52, v4

    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v52, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    add-int/lit8 v4, v27, 0x1

    .line 459
    .local v4, "searchDepth":I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v53, v27

    move/from16 v54, v0

    move/from16 v55, v11

    move/from16 v56, v12

    move/from16 v57, v13

    move/from16 v58, v14

    move/from16 v59, v15

    move/from16 v60, v16

    move/from16 v61, v17

    move-object/from16 v62, v18

    move-object/from16 v15, v19

    move/from16 v63, v20

    move/from16 v64, v21

    move/from16 v65, v22

    move-object/from16 v14, v23

    move-object/from16 v11, v24

    move/from16 v66, v25

    move/from16 v67, v26

    .line 460
    .end local v0    # "targetSdkVersion":I
    .end local v12    # "debuggable":Z
    .end local v13    # "profilableByShell":Z
    .end local v16    # "extractNativeLibs":Z
    .end local v17    # "useEmbeddedDex":Z
    .end local v18    # "usesSplitName":Ljava/lang/String;
    .end local v19    # "targetPackage":Ljava/lang/String;
    .end local v20    # "overlayIsStatic":Z
    .end local v21    # "overlayPriority":I
    .end local v22    # "rollbackDataPolicy":I
    .end local v23    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v24    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v25    # "hasDeviceAdminReceiver":Z
    .end local v26    # "isSdkLibrary":Z
    .local v11, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v14, "requiredSystemPropertyName":Ljava/lang/String;
    .local v15, "targetPackage":Ljava/lang/String;
    .local v53, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v54, "targetSdkVersion":I
    .local v55, "minSdkVersion":I
    .local v56, "debuggable":Z
    .local v57, "profilableByShell":Z
    .local v58, "multiArch":Z
    .local v59, "use32bitAbi":Z
    .local v60, "extractNativeLibs":Z
    .local v61, "useEmbeddedDex":Z
    .local v62, "usesSplitName":Ljava/lang/String;
    .local v63, "overlayIsStatic":Z
    .local v64, "overlayPriority":I
    .local v65, "rollbackDataPolicy":I
    .local v66, "hasDeviceAdminReceiver":Z
    .local v67, "isSdkLibrary":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    .local v13, "type":I
    const-string v12, "ApkLiteParseUtils"

    if-eq v0, v10, :cond_1d

    const/4 v0, 0x3

    if-ne v13, v0, :cond_3

    .line 461
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-lt v10, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v68, v6

    move-object/from16 v21, v53

    move/from16 v53, v4

    goto/16 :goto_a

    .line 462
    :cond_3
    :goto_1
    if-eq v13, v0, :cond_1c

    const/4 v10, 0x4

    if-ne v13, v10, :cond_4

    .line 463
    move-object/from16 v68, v6

    move-object/from16 v17, v8

    move-object/from16 v21, v53

    const/16 v16, 0x1

    move/from16 v53, v4

    goto/16 :goto_9

    .line 466
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-eq v10, v4, :cond_5

    .line 467
    move-object/from16 v68, v6

    move-object/from16 v17, v8

    move-object/from16 v21, v53

    const/16 v16, 0x1

    move/from16 v53, v4

    goto/16 :goto_9

    .line 470
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "package-verifier"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 471
    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v0

    .line 472
    .local v0, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v0, :cond_6

    .line 473
    move-object/from16 v10, v53

    .end local v53    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v10, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 472
    .end local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v53    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_6
    move-object/from16 v10, v53

    .line 475
    .end local v0    # "verifier":Landroid/content/pm/VerifierInfo;
    .end local v53    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :goto_2
    move/from16 v53, v4

    move-object/from16 v68, v6

    move-object/from16 v17, v8

    move-object/from16 v21, v10

    const/16 v16, 0x1

    goto/16 :goto_9

    .end local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v53    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_7
    move-object/from16 v10, v53

    .end local v53    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move/from16 v53, v4

    .end local v4    # "searchDepth":I
    .local v53, "searchDepth":I
    const-string v4, "application"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 476
    const-string v0, "debuggable"

    const/4 v4, 0x0

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v56

    .line 478
    const-string/jumbo v0, "multiArch"

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v58

    .line 480
    const-string/jumbo v0, "use32bitAbi"

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v59

    .line 482
    const-string v0, "extractNativeLibs"

    const/4 v12, 0x1

    invoke-interface {v2, v8, v0, v12}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v60

    .line 484
    const-string/jumbo v0, "useEmbeddedDex"

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v61

    .line 486
    const-string/jumbo v0, "rollbackDataPolicy"

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v65

    .line 488
    const-string/jumbo v0, "permission"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "permission":Ljava/lang/String;
    nop

    .line 491
    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 493
    .local v4, "hasBindDeviceAdminPermission":Z
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    move-object/from16 v19, v0

    move/from16 v0, v57

    .line 495
    .end local v57    # "profilableByShell":Z
    .local v0, "profilableByShell":Z
    .local v12, "innerDepth":I
    .local v19, "permission":Ljava/lang/String;
    :goto_3
    move-object/from16 v68, v6

    .end local v6    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .local v68, "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move/from16 v20, v6

    move-object/from16 v21, v10

    const/4 v10, 0x1

    .end local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v20, "innerType":I
    .local v21, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    if-eq v6, v10, :cond_f

    move/from16 v6, v20

    const/4 v10, 0x3

    .end local v20    # "innerType":I
    .local v6, "innerType":I
    if-ne v6, v10, :cond_8

    .line 496
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v12, :cond_f

    .line 497
    :cond_8
    const/4 v10, 0x3

    if-eq v6, v10, :cond_d

    const/4 v10, 0x4

    if-ne v6, v10, :cond_9

    .line 498
    goto :goto_4

    .line 501
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    move/from16 v20, v6

    .end local v6    # "innerType":I
    .restart local v20    # "innerType":I
    add-int/lit8 v6, v12, 0x1

    if-eq v10, v6, :cond_a

    .line 503
    goto :goto_4

    .line 506
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "profileable"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 507
    const-string/jumbo v6, "shell"

    invoke-interface {v2, v8, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    move-object/from16 v10, v21

    move-object/from16 v6, v68

    goto :goto_3

    .line 509
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "receiver"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 510
    invoke-static {v2, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isDeviceAdminReceiver(Landroid/content/res/XmlResourceParser;Z)Z

    move-result v6

    or-int v66, v66, v6

    move-object/from16 v10, v21

    move-object/from16 v6, v68

    goto :goto_3

    .line 512
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "sdk-library"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 513
    const/16 v67, 0x1

    move-object/from16 v10, v21

    move-object/from16 v6, v68

    goto :goto_3

    .line 497
    .end local v20    # "innerType":I
    .restart local v6    # "innerType":I
    :cond_d
    move/from16 v20, v6

    .line 495
    .end local v6    # "innerType":I
    :cond_e
    :goto_4
    move-object/from16 v10, v21

    move-object/from16 v6, v68

    goto :goto_3

    .line 516
    .end local v4    # "hasBindDeviceAdminPermission":Z
    .end local v12    # "innerDepth":I
    .end local v19    # "permission":Ljava/lang/String;
    :cond_f
    move/from16 v57, v0

    move/from16 v4, v53

    move-object/from16 v6, v68

    const/4 v10, 0x1

    move-object/from16 v53, v21

    goto/16 :goto_0

    .end local v0    # "profilableByShell":Z
    .end local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v68    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .local v6, "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v57    # "profilableByShell":Z
    :cond_10
    move-object/from16 v68, v6

    move-object/from16 v21, v10

    .end local v6    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v10    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v68    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "overlay"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 517
    const-string/jumbo v0, "requiredSystemPropertyName"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 519
    const-string/jumbo v0, "requiredSystemPropertyValue"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 521
    const-string/jumbo v0, "targetPackage"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 522
    const-string v0, "isStatic"

    const/4 v4, 0x0

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v63

    .line 524
    const-string/jumbo v0, "priority"

    invoke-interface {v2, v8, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v64

    move/from16 v4, v53

    move-object/from16 v6, v68

    const/4 v10, 0x1

    move-object/from16 v53, v21

    goto/16 :goto_0

    .line 525
    :cond_11
    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "uses-split"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 526
    if-eqz v62, :cond_12

    .line 527
    const-string v0, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v17, v8

    const/16 v16, 0x1

    goto/16 :goto_9

    .line 531
    :cond_12
    const-string/jumbo v0, "name"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 532
    if-nez v62, :cond_13

    .line 533
    const/16 v0, -0x6c

    const-string v4, "<uses-split> tag requires \'android:name\' attribute"

    invoke-interface {v1, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 532
    :cond_13
    move/from16 v4, v53

    move-object/from16 v6, v68

    const/4 v10, 0x1

    move-object/from16 v53, v21

    goto/16 :goto_0

    .line 536
    :cond_14
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "uses-sdk"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 538
    const-string/jumbo v0, "minSdkVersion"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "minSdkVersionString":Ljava/lang/String;
    const-string/jumbo v0, "targetSdkVersion"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 543
    .local v10, "targetSdkVersionString":Ljava/lang/String;
    const/4 v12, 0x1

    .line 544
    .local v12, "minVer":I
    const/16 v17, 0x0

    .line 545
    .local v17, "minCode":Ljava/lang/String;
    const/16 v18, 0x0

    .line 546
    .local v18, "minAssigned":Z
    const/16 v19, 0x0

    .line 547
    .local v19, "targetVer":I
    const/16 v20, 0x0

    .line 549
    .local v20, "targetCode":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 551
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    .line 552
    const/16 v18, 0x1

    .line 556
    const/16 v16, 0x1

    goto :goto_5

    .line 553
    :catch_0
    move-exception v0

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    .line 554
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v6

    .line 555
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    const/16 v16, 0x1

    xor-int/lit8 v22, v22, 0x1

    move/from16 v18, v22

    goto :goto_5

    .line 549
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    :cond_15
    const/16 v16, 0x1

    .line 559
    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 561
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v19, v0

    .line 567
    :cond_16
    :goto_6
    move-object/from16 v0, v17

    move/from16 v4, v19

    move-object/from16 v2, v20

    goto :goto_7

    .line 562
    :catch_1
    move-exception v0

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    .line 563
    .restart local v0    # "ignored":Ljava/lang/NumberFormatException;
    move-object/from16 v20, v10

    .line 564
    if-nez v18, :cond_16

    .line 565
    move-object/from16 v17, v20

    goto :goto_6

    .line 569
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    :cond_17
    move/from16 v19, v12

    .line 570
    move-object/from16 v20, v17

    move-object/from16 v0, v17

    move/from16 v4, v19

    move-object/from16 v2, v20

    .line 573
    .end local v17    # "minCode":Ljava/lang/String;
    .end local v19    # "targetVer":I
    .end local v20    # "targetCode":Ljava/lang/String;
    .local v0, "minCode":Ljava/lang/String;
    .local v2, "targetCode":Ljava/lang/String;
    .local v4, "targetVer":I
    :goto_7
    const/16 v17, 0x0

    .line 574
    .local v17, "allowUnknownCodenames":Z
    move-object/from16 v19, v6

    .end local v6    # "minSdkVersionString":Ljava/lang/String;
    .local v19, "minSdkVersionString":Ljava/lang/String;
    and-int/lit16 v6, v3, 0x200

    if-eqz v6, :cond_18

    .line 575
    const/16 v17, 0x1

    move/from16 v6, v17

    goto :goto_8

    .line 574
    :cond_18
    move/from16 v6, v17

    .line 578
    .end local v17    # "allowUnknownCodenames":Z
    .local v6, "allowUnknownCodenames":Z
    :goto_8
    move-object/from16 v17, v8

    sget-object v8, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    move-object/from16 v20, v10

    .end local v10    # "targetSdkVersionString":Ljava/lang/String;
    .local v20, "targetSdkVersionString":Ljava/lang/String;
    invoke-static {v4, v2, v8, v1, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 581
    .local v10, "targetResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 582
    invoke-interface {v1, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    return-object v8

    .line 584
    :cond_19
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 586
    move-object/from16 v22, v2

    .end local v2    # "targetCode":Ljava/lang/String;
    .local v22, "targetCode":Ljava/lang/String;
    sget v2, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_VERSION:I

    invoke-static {v12, v0, v2, v8, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 588
    .local v2, "minResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 589
    invoke-interface {v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    return-object v8

    .line 591
    :cond_1a
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v55

    .line 592
    .end local v0    # "minCode":Ljava/lang/String;
    .end local v2    # "minResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v4    # "targetVer":I
    .end local v6    # "allowUnknownCodenames":Z
    .end local v10    # "targetResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v12    # "minVer":I
    .end local v18    # "minAssigned":Z
    .end local v19    # "minSdkVersionString":Ljava/lang/String;
    .end local v20    # "targetSdkVersionString":Ljava/lang/String;
    .end local v22    # "targetCode":Ljava/lang/String;
    move-object/from16 v2, p2

    move/from16 v10, v16

    move-object/from16 v8, v17

    move/from16 v4, v53

    move-object/from16 v6, v68

    move-object/from16 v53, v21

    goto/16 :goto_0

    .line 536
    :cond_1b
    move-object/from16 v17, v8

    const/16 v16, 0x1

    goto :goto_9

    .line 462
    .end local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v68    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .local v4, "searchDepth":I
    .local v6, "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .local v53, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_1c
    move-object/from16 v68, v6

    move-object/from16 v17, v8

    move-object/from16 v21, v53

    const/16 v16, 0x1

    move/from16 v53, v4

    .line 460
    .end local v4    # "searchDepth":I
    .end local v6    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v13    # "type":I
    .restart local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v53, "searchDepth":I
    .restart local v68    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :goto_9
    move-object/from16 v2, p2

    move/from16 v10, v16

    move-object/from16 v8, v17

    move/from16 v4, v53

    move-object/from16 v6, v68

    move-object/from16 v53, v21

    goto/16 :goto_0

    .end local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v68    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v4    # "searchDepth":I
    .restart local v6    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v13    # "type":I
    .local v53, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_1d
    move-object/from16 v68, v6

    move-object/from16 v21, v53

    move/from16 v53, v4

    .line 596
    .end local v4    # "searchDepth":I
    .end local v6    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v53, "searchDepth":I
    .restart local v68    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :goto_a
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_1f

    .line 597
    invoke-static {v14, v11}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping target and overlay pair "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": overlay ignored due to required system property: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " with value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "message":Ljava/lang/String;
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 597
    .end local v0    # "message":Ljava/lang/String;
    :cond_1e
    move-object/from16 v2, p1

    goto :goto_b

    .line 596
    :cond_1f
    move-object/from16 v2, p1

    .line 606
    :goto_b
    new-instance v0, Landroid/content/pm/parsing/ApkLite;

    move-object/from16 v4, v21

    .end local v21    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v4, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    move-object v10, v0

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move v8, v13

    .end local v13    # "type":I
    .local v8, "type":I
    move-object v13, v6

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v6

    check-cast v40, Ljava/util/Set;

    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v6

    check-cast v41, Ljava/util/Set;

    move-object v6, v11

    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v6, "requiredSystemPropertyValue":Ljava/lang/String;
    move-object/from16 v11, p1

    move-object/from16 v69, v14

    .end local v14    # "requiredSystemPropertyName":Ljava/lang/String;
    .local v69, "requiredSystemPropertyName":Ljava/lang/String;
    move/from16 v14, v49

    move-object/from16 v70, v15

    .end local v15    # "targetPackage":Ljava/lang/String;
    .local v70, "targetPackage":Ljava/lang/String;
    move-object/from16 v15, v51

    move-object/from16 v16, v62

    move/from16 v17, v50

    move/from16 v18, v44

    move/from16 v19, v45

    move/from16 v20, v46

    move/from16 v21, v9

    move-object/from16 v22, v4

    move-object/from16 v23, p3

    move/from16 v24, v47

    move/from16 v25, v56

    move/from16 v26, v57

    move/from16 v27, v58

    move/from16 v28, v59

    move/from16 v29, v61

    move/from16 v30, v60

    move/from16 v31, v48

    move-object/from16 v32, v70

    move/from16 v33, v63

    move/from16 v34, v64

    move-object/from16 v35, v69

    move-object/from16 v36, v6

    move/from16 v37, v55

    move/from16 v38, v54

    move/from16 v39, v65

    move/from16 v42, v66

    move/from16 v43, v67

    invoke-direct/range {v10 .. v43}, Landroid/content/pm/parsing/ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZ)V

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "debugPathName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 348
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    if-eqz v8, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 350
    .local v10, "apkPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 351
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 354
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v0, 0x0

    const-string v11, "Failed to parse "

    if-eqz v8, :cond_1

    .line 355
    const/4 v3, 0x0

    move-object/from16 v12, p3

    :try_start_0
    invoke-static {v8, v12, v0, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v3

    goto :goto_1

    .line 356
    :cond_1
    move-object/from16 v12, p3

    invoke-static {v10}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :goto_1
    move-object v13, v3

    .line 360
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .local v13, "apkAssets":Landroid/content/res/ApkAssets;
    nop

    .line 362
    :try_start_1
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v13, v2}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v14, v2

    .line 365
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    and-int/lit8 v1, v9, 0x20

    if-eqz v1, :cond_5

    .line 366
    and-int/lit8 v1, v9, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v3, v0

    .line 367
    .local v3, "skipVerify":Z
    :try_start_2
    const-string v0, "collectCertificates"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 369
    nop

    .line 371
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v15, 0x0

    .line 370
    move-object/from16 v1, p0

    move-wide/from16 v16, v5

    move-object v5, v0

    move v6, v15

    :try_start_4
    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    .line 374
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 379
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 391
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    if-eqz v13, :cond_3

    .line 394
    :try_start_6
    invoke-virtual {v13}, Landroid/content/res/ApkAssets;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 396
    goto :goto_2

    .line 395
    :catchall_0
    move-exception v0

    .line 375
    :cond_3
    :goto_2
    return-object v2

    .line 377
    :cond_4
    :try_start_7
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 379
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    nop

    .line 381
    .end local v3    # "skipVerify":Z
    move-object v1, v0

    goto :goto_4

    .line 379
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v3    # "skipVerify":Z
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-wide/from16 v16, v5

    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    nop

    .end local v10    # "apkPath":Ljava/lang/String;
    .end local v13    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "debugPathName":Ljava/lang/String;
    .end local p4    # "flags":I
    throw v0

    .line 382
    .end local v3    # "skipVerify":Z
    .restart local v10    # "apkPath":Ljava/lang/String;
    .restart local v13    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "debugPathName":Ljava/lang/String;
    .restart local p4    # "flags":I
    :cond_5
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    move-object v1, v0

    .line 385
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_4
    invoke-static {v7, v10, v14, v1, v9}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 391
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    if-eqz v13, :cond_6

    .line 394
    :try_start_9
    invoke-virtual {v13}, Landroid/content/res/ApkAssets;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 396
    goto :goto_5

    .line 395
    :catchall_3
    move-exception v0

    .line 385
    :cond_6
    :goto_5
    return-object v2

    .line 391
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catchall_4
    move-exception v0

    move-object v3, v0

    move-object v2, v13

    move-object v1, v14

    goto/16 :goto_9

    .line 386
    :catch_0
    move-exception v0

    move-object v2, v13

    move-object v1, v14

    goto :goto_7

    .line 391
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object v2, v13

    goto :goto_9

    .line 386
    :catch_1
    move-exception v0

    move-object v2, v13

    goto :goto_7

    .line 391
    .end local v13    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    :catchall_6
    move-exception v0

    move-object v3, v0

    goto :goto_9

    .line 386
    :catch_2
    move-exception v0

    goto :goto_7

    .line 357
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 358
    .local v3, "e":Ljava/io/IOException;
    const/16 v0, -0x64

    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 391
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    if-eqz v2, :cond_7

    .line 394
    :try_start_b
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 396
    goto :goto_6

    .line 395
    :catchall_7
    move-exception v0

    .line 358
    :cond_7
    :goto_6
    return-object v4

    .line 386
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7
    move-object v3, v0

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v0, "ApkLiteParseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/16 v0, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v0, v4, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 391
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    if-eqz v2, :cond_8

    .line 394
    :try_start_d
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 396
    goto :goto_8

    .line 395
    :catchall_8
    move-exception v0

    .line 388
    :cond_8
    :goto_8
    return-object v4

    .line 391
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 392
    if-eqz v2, :cond_9

    .line 394
    :try_start_e
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 396
    goto :goto_a

    .line 395
    :catchall_9
    move-exception v0

    .line 399
    :cond_9
    :goto_a
    throw v3
.end method

.method public static blacklist parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageDirOrApk"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 147
    .local p2, "frameworkSplits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 148
    .local v4, "parsingFrameworkSplits":Z
    :goto_0
    const-string v7, "No packages found in split"

    const/16 v8, -0x64

    if-eqz v4, :cond_2

    .line 149
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 150
    invoke-interface {v1, v8, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 153
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v6

    new-array v7, v7, [Ljava/io/File;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/io/File;

    .line 155
    .local v7, "files":[Ljava/io/File;
    array-length v8, v7

    sub-int/2addr v8, v6

    aput-object v2, v7, v8

    goto :goto_1

    .line 157
    .end local v7    # "files":[Ljava/io/File;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 158
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 159
    invoke-interface {v1, v8, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 163
    :cond_3
    array-length v7, v9

    if-ne v7, v6, :cond_4

    aget-object v7, v9, v5

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 164
    aget-object v5, v9, v5

    invoke-static {v1, v5, v3, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 168
    :cond_4
    move-object v7, v9

    .end local v9    # "files":[Ljava/io/File;
    .restart local v7    # "files":[Ljava/io/File;
    :goto_1
    if-eqz v4, :cond_5

    .line 171
    and-int/lit8 v0, v0, -0x21

    move v8, v0

    .end local p3    # "flags":I
    .local v0, "flags":I
    goto :goto_2

    .line 168
    .end local v0    # "flags":I
    .restart local p3    # "flags":I
    :cond_5
    move v8, v0

    .line 174
    .end local p3    # "flags":I
    .local v8, "flags":I
    :goto_2
    const/4 v9, 0x0

    .line 175
    .local v9, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 176
    .local v10, "versionCode":I
    const/4 v11, 0x0

    .line 178
    .local v11, "baseApk":Landroid/content/pm/parsing/ApkLite;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v0

    .line 179
    .local v12, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    const-wide/32 v13, 0x40000

    const-string/jumbo v0, "parseApkLite"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 181
    :try_start_0
    array-length v0, v7

    :goto_3
    if-ge v5, v0, :cond_c

    aget-object v15, v7, v5

    .line 182
    .local v15, "file":Ljava/io/File;
    invoke-static {v15}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 183
    invoke-static {v1, v15, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v16

    move-object/from16 p3, v16

    .line 184
    .local p3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface/range {p3 .. p3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 185
    move-object/from16 v0, p3

    .end local p3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 185
    return-object v5

    .line 188
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .restart local p3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    :cond_6
    move-object/from16 v16, p3

    .end local p3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .local v16, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/parsing/ApkLite;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p3, v17

    .line 189
    .local p3, "lite":Landroid/content/pm/parsing/ApkLite;
    if-eqz v4, :cond_7

    :try_start_2
    array-length v13, v7

    sub-int/2addr v13, v6

    aget-object v13, v7, v13

    if-ne v15, v13, :cond_7

    .line 190
    move-object/from16 v11, p3

    .line 191
    goto/16 :goto_5

    .line 195
    :cond_7
    if-nez v9, :cond_8

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v14

    move v10, v14

    goto/16 :goto_4

    .line 199
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "; expected "

    const-string v13, " in "

    if-nez v14, :cond_9

    .line 200
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    const/16 v5, -0x65

    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 200
    return-object v0

    .line 205
    :cond_9
    if-nez v4, :cond_a

    :try_start_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v14

    if-eq v10, v14, :cond_a

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent version "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const/16 v5, -0x65

    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 206
    return-object v0

    .line 213
    :cond_a
    :goto_4
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, p3

    .end local p3    # "lite":Landroid/content/pm/parsing/ApkLite;
    .local v13, "lite":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v12, v6, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split name "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " defined more than once; most recent was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    const/16 v5, -0x65

    invoke-interface {v1, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 214
    return-object v0

    .line 181
    .end local v13    # "lite":Landroid/content/pm/parsing/ApkLite;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    :cond_b
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    const-wide/32 v13, 0x40000

    goto/16 :goto_3

    .line 222
    :cond_c
    :goto_5
    if-nez v4, :cond_d

    .line 223
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/ApkLite;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v11, v0

    goto :goto_6

    .line 226
    :catchall_0
    move-exception v0

    const-wide/32 v5, 0x40000

    goto :goto_7

    :cond_d
    :goto_6
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 227
    nop

    .line 228
    invoke-static {v1, v2, v11, v12}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 226
    :catchall_1
    move-exception v0

    move-wide v5, v13

    :goto_7
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 227
    throw v0
.end method

.method public static blacklist parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 117
    move-object/from16 v1, p0

    const-wide/32 v2, 0x40000

    const-string/jumbo v0, "parseApkLite"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 119
    :try_start_0
    invoke-static/range {p0 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 120
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    return-object v4

    .line 124
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/content/pm/parsing/ApkLite;

    .line 125
    .local v8, "baseApk":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "packagePath":Ljava/lang/String;
    new-instance v4, Landroid/content/pm/parsing/PackageLite;

    .line 127
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 130
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v17}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 126
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    return-object v4

    .line 133
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .end local v6    # "packagePath":Ljava/lang/String;
    .end local v8    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    throw v0
.end method

.method public static blacklist parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 655
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    const/16 v0, -0x6c

    if-eq v1, v2, :cond_1

    .line 660
    const-string v2, "No start tag found"

    invoke-interface {p0, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 663
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    const-string v2, "No <manifest> tag"

    invoke-interface {p0, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 668
    :cond_2
    const/4 v0, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_3

    const-string/jumbo v4, "oplus"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 675
    invoke-static {p0, v2, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 677
    .local v3, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid manifest package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 679
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-interface {p0, v5, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 683
    .end local v3    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_3
    const-string/jumbo v3, "split"

    invoke-interface {p1, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "splitName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 685
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 686
    const/4 v0, 0x0

    goto :goto_1

    .line 688
    :cond_4
    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 690
    .restart local v3    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest split: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 692
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-interface {p0, v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 697
    .end local v3    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 698
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v0

    .line 697
    :goto_2
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist parseRequiredSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "requiredSplitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 708
    .local v1, "splitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "requiredSplitTypes"

    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 709
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 710
    invoke-static {p0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 711
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 712
    invoke-interface {p0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 714
    :cond_0
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    .line 717
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1
    const-string/jumbo v4, "splitTypes"

    invoke-interface {p1, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .end local v3    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 719
    invoke-static {p0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 720
    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 721
    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 723
    :cond_2
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/Set;

    .line 726
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 7
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 750
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "publicKey"

    invoke-interface {p0, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "ApkLiteParseUtils"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    invoke-static {v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 759
    .local v4, "publicKey":Ljava/security/PublicKey;
    if-nez v4, :cond_1

    .line 760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse verifier public key for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-object v2

    .line 764
    :cond_1
    new-instance v2, Landroid/content/pm/VerifierInfo;

    invoke-direct {v2, v1, v4}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v2

    .line 754
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    :goto_0
    const-string/jumbo v4, "verifier package name was null; skipping"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-object v2
.end method

.method private static blacklist separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "values"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 731
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 732
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 733
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 736
    .local v6, "type":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {p0, v6, v3, v7}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 738
    .local v7, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 739
    const/16 v1, -0x6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid manifest split types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 740
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-interface {p0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 742
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 743
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was defined multiple times"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ApkLiteParseUtils"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 746
    :cond_2
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;
    .locals 3
    .param p0, "apk"    # Landroid/content/pm/parsing/ApkLite;

    .line 315
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {p0}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "base"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "split_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
