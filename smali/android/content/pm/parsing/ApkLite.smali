.class public Landroid/content/pm/parsing/ApkLite;
.super Ljava/lang/Object;
.source "ApkLite.java"


# instance fields
.field private final blacklist mConfigForSplit:Ljava/lang/String;

.field private final blacklist mCoreApp:Z

.field private final blacklist mDebuggable:Z

.field private final blacklist mExtractNativeLibs:Z

.field private final blacklist mFeatureSplit:Z

.field private final blacklist mHasDeviceAdminReceiver:Z

.field private final blacklist mInstallLocation:I

.field private final blacklist mIsSdkLibrary:Z

.field private final blacklist mIsolatedSplits:Z

.field private final blacklist mMinSdkVersion:I

.field private final blacklist mMultiArch:Z

.field private final blacklist mOverlayIsStatic:Z

.field private final blacklist mOverlayPriority:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mProfileableByShell:Z

.field private final blacklist mRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequiredSystemPropertyName:Ljava/lang/String;

.field private final blacklist mRequiredSystemPropertyValue:Ljava/lang/String;

.field private final blacklist mRevisionCode:I

.field private final blacklist mRollbackDataPolicy:I

.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final blacklist mSplitName:Ljava/lang/String;

.field private final blacklist mSplitRequired:Z

.field private final blacklist mSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetPackageName:Ljava/lang/String;

.field private final blacklist mTargetSdkVersion:I

.field private final blacklist mUse32bitAbi:Z

.field private final blacklist mUseEmbeddedDex:Z

.field private final blacklist mUsesSplitName:Ljava/lang/String;

.field private final blacklist mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final blacklist mVersionCode:I

.field private final blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZ)V
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "isFeatureSplit"    # Z
    .param p5, "configForSplit"    # Ljava/lang/String;
    .param p6, "usesSplitName"    # Ljava/lang/String;
    .param p7, "isSplitRequired"    # Z
    .param p8, "versionCode"    # I
    .param p9, "versionCodeMajor"    # I
    .param p10, "revisionCode"    # I
    .param p11, "installLocation"    # I
    .param p13, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p14, "coreApp"    # Z
    .param p15, "debuggable"    # Z
    .param p16, "profileableByShell"    # Z
    .param p17, "multiArch"    # Z
    .param p18, "use32bitAbi"    # Z
    .param p19, "useEmbeddedDex"    # Z
    .param p20, "extractNativeLibs"    # Z
    .param p21, "isolatedSplits"    # Z
    .param p22, "targetPackageName"    # Ljava/lang/String;
    .param p23, "overlayIsStatic"    # Z
    .param p24, "overlayPriority"    # I
    .param p25, "requiredSystemPropertyName"    # Ljava/lang/String;
    .param p26, "requiredSystemPropertyValue"    # Ljava/lang/String;
    .param p27, "minSdkVersion"    # I
    .param p28, "targetSdkVersion"    # I
    .param p29, "rollbackDataPolicy"    # I
    .param p32, "hasDeviceAdminReceiver"    # Z
    .param p33, "isSdkLibrary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 151
    .local p12, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local p30, "requiredSplitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p31, "splitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    .line 153
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    .line 154
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    .line 155
    move-object/from16 v4, p31

    iput-object v4, v0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    .line 156
    move/from16 v5, p4

    iput-boolean v5, v0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    .line 157
    move-object/from16 v6, p5

    iput-object v6, v0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    .line 158
    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    .line 159
    move-object/from16 v8, p30

    iput-object v8, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    .line 160
    if-nez p7, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    .line 161
    move/from16 v9, p8

    iput v9, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    .line 162
    move/from16 v10, p9

    iput v10, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    .line 163
    move/from16 v11, p10

    iput v11, v0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    .line 164
    move/from16 v12, p11

    iput v12, v0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    .line 165
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/pm/VerifierInfo;

    move-object/from16 v14, p12

    invoke-interface {v14, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/VerifierInfo;

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    .line 166
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 167
    move/from16 v15, p14

    iput-boolean v15, v0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    .line 168
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    .line 169
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    .line 170
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    .line 171
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    .line 172
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    .line 173
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    .line 174
    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    .line 175
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    .line 176
    move/from16 v1, p23

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    .line 177
    move/from16 v1, p24

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    .line 178
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    .line 179
    move-object/from16 v1, p26

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    .line 180
    move/from16 v1, p27

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    .line 181
    move/from16 v1, p28

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    .line 182
    move/from16 v1, p29

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    .line 183
    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    .line 184
    move/from16 v1, p33

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    .line 185
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    return-void
.end method

.method private blacklist hasAnyRequiredSplitTypes()Z
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getConfigForSplit()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInstallLocation()I
    .locals 1

    .line 306
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    return v0
.end method

.method public blacklist getLongVersionCode()J
    .locals 2

    .line 192
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinSdkVersion()I
    .locals 1

    .line 314
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    return v0
.end method

.method public blacklist getOverlayPriority()I
    .locals 1

    .line 444
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getRequiredSystemPropertyName()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredSystemPropertyValue()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRevisionCode()I
    .locals 1

    .line 294
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    return v0
.end method

.method public blacklist getRollbackDataPolicy()I
    .locals 1

    .line 474
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    return v0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 1

    .line 338
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public blacklist getSplitName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getTargetPackageName()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTargetSdkVersion()I
    .locals 1

    .line 322
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    return v0
.end method

.method public blacklist getUsesSplitName()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVerifiers()[Landroid/content/pm/VerifierInfo;
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public blacklist getVersionCode()I
    .locals 1

    .line 286
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    return v0
.end method

.method public blacklist getVersionCodeMajor()I
    .locals 1

    .line 278
    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    return v0
.end method

.method public blacklist isCoreApp()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    return v0
.end method

.method public blacklist isDebuggable()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    return v0
.end method

.method public blacklist isExtractNativeLibs()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public blacklist isFeatureSplit()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    return v0
.end method

.method public blacklist isHasDeviceAdminReceiver()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    return v0
.end method

.method public blacklist isIsSdkLibrary()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public blacklist isIsolatedSplits()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    return v0
.end method

.method public blacklist isMultiArch()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    return v0
.end method

.method public blacklist isOverlayIsStatic()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    return v0
.end method

.method public blacklist isProfileableByShell()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    return v0
.end method

.method public blacklist isSplitRequired()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    return v0
.end method

.method public blacklist isUse32bitAbi()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    return v0
.end method
