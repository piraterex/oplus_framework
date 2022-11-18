.class Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSplitAssetLoader"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private blacklist mBaseApkAssets:Landroid/content/res/ApkAssets;

.field private final blacklist mBaseCodePath:Ljava/lang/String;

.field private blacklist mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final blacklist mFlags:I

.field private final blacklist mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p2, "flags"    # I

    .line 8996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8997
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    .line 8998
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 8999
    iput p2, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    .line 9000
    return-void
.end method

.method private static blacklist loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9004
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9005
    :cond_0
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 9010
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9011
    :catch_0
    move-exception v0

    .line 9012
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/4 v2, -0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load APK at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9055
    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9056
    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .locals 1

    .line 9060
    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9019
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_0

    .line 9020
    return-object v1

    .line 9023
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9024
    array-length v1, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 9026
    .local v1, "apkAssets":[Landroid/content/res/ApkAssets;
    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v3, v4}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    .line 9029
    const/4 v4, 0x0

    .line 9030
    .local v4, "splitIdx":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "splitIdx":I
    .local v5, "splitIdx":I
    aput-object v3, v1, v4

    .line 9033
    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9034
    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v4, v3

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 9035
    .local v7, "apkPath":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "splitIdx":I
    .local v8, "splitIdx":I
    iget v9, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v9

    aput-object v9, v1, v5

    .line 9034
    .end local v7    # "apkPath":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_1

    .line 9039
    .end local v8    # "splitIdx":I
    .restart local v5    # "splitIdx":I
    :cond_2
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    .local v3, "assets":Landroid/content/res/AssetManager;
    move-object v6, v3

    .line 9040
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v24, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v6 .. v24}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 9042
    invoke-virtual {v3, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 9044
    iput-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 9045
    return-object v3
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 1
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9050
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
