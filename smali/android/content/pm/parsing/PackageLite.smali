.class public Landroid/content/pm/parsing/PackageLite;
.super Ljava/lang/Object;
.source "PackageLite.java"


# instance fields
.field private final blacklist mBaseApkPath:Ljava/lang/String;

.field private final blacklist mBaseRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBaseRevisionCode:I

.field private final blacklist mConfigForSplit:[Ljava/lang/String;

.field private final blacklist mCoreApp:Z

.field private final blacklist mDebuggable:Z

.field private final blacklist mExtractNativeLibs:Z

.field private final blacklist mInstallLocation:I

.field private final blacklist mIsFeatureSplits:[Z

.field private final blacklist mIsSdkLibrary:Z

.field private final blacklist mIsolatedSplits:Z

.field private final blacklist mMultiArch:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mProfileableByShell:Z

.field private final blacklist mRequiredSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSplitApkPaths:[Ljava/lang/String;

.field private final blacklist mSplitNames:[Ljava/lang/String;

.field private final blacklist mSplitRequired:Z

.field private final blacklist mSplitRevisionCodes:[I

.field private final blacklist mSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetSdk:I

.field private final blacklist mUse32bitAbi:Z

.field private final blacklist mUseEmbeddedDex:Z

.field private final blacklist mUsesSplitNames:[Ljava/lang/String;

.field private final blacklist mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final blacklist mVersionCode:I

.field private final blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "baseApkPath"    # Ljava/lang/String;
    .param p3, "baseApk"    # Landroid/content/pm/parsing/ApkLite;
    .param p4, "splitNames"    # [Ljava/lang/String;
    .param p5, "isFeatureSplits"    # [Z
    .param p6, "usesSplitNames"    # [Ljava/lang/String;
    .param p7, "configForSplit"    # [Ljava/lang/String;
    .param p8, "splitApkPaths"    # [Ljava/lang/String;
    .param p9, "splitRevisionCodes"    # [I
    .param p10, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            "[",
            "Ljava/lang/String;",
            "[Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[II[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p11, "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .local p12, "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    .line 121
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    .line 122
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    .line 123
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCodeMajor()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    .line 124
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    .line 125
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    .line 126
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    .line 127
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isCoreApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    .line 128
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isDebuggable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    .line 129
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isMultiArch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    .line 130
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUse32bitAbi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    .line 131
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isExtractNativeLibs()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    .line 132
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsolatedSplits()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    .line 133
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    .line 134
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    .line 135
    iput-object p11, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    .line 136
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/content/pm/parsing/PackageLite;->hasAnyRequiredSplitTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    .line 137
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isProfileableByShell()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    .line 138
    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsSdkLibrary()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    .line 139
    iput-object p4, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    .line 140
    iput-object p12, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    .line 141
    iput-object p5, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    .line 142
    iput-object p6, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    .line 143
    iput-object p7, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    .line 144
    iput-object p8, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    .line 145
    iput-object p9, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    .line 146
    iput p10, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    .line 147
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    return-void
.end method

.method private blacklist hasAnyRequiredSplitTypes()Z
    .locals 3

    .line 173
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 174
    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    new-instance v2, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic blacklist lambda$hasAnyRequiredSplitTypes$0(Ljava/util/Set;)Z
    .locals 1
    .param p0, "r"    # Ljava/util/Set;

    .line 176
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getAllApkPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 158
    :cond_0
    return-object v0
.end method

.method public blacklist getBaseApkPath()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBaseRequiredSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getBaseRevisionCode()I
    .locals 1

    .line 296
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    return v0
.end method

.method public blacklist getConfigForSplit()[Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .locals 1

    .line 316
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    return v0
.end method

.method public blacklist getIsFeatureSplits()[Z
    .locals 1

    .line 332
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    return-object v0
.end method

.method public blacklist getLongVersionCode()J
    .locals 2

    .line 166
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSplitTypes()[Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getSplitApkPaths()[Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitNames()[Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitRevisionCodes()[I
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    return-object v0
.end method

.method public blacklist getSplitTypes()[Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getTargetSdk()I
    .locals 1

    .line 288
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    return v0
.end method

.method public blacklist getUsesSplitNames()[Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVerifiers()[Landroid/content/pm/VerifierInfo;
    .locals 1

    .line 324
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .locals 1

    .line 283
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .locals 1

    .line 278
    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    return v0
.end method

.method public blacklist isCoreApp()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    return v0
.end method

.method public blacklist isDebuggable()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    return v0
.end method

.method public blacklist isExtractNativeLibs()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public blacklist isIsSdkLibrary()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public blacklist isIsolatedSplits()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    return v0
.end method

.method public blacklist isMultiArch()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    return v0
.end method

.method public blacklist isSplitRequired()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    return v0
.end method

.method public blacklist isUse32bitAbi()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    return v0
.end method
