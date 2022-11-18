.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;
.source "ZygoteArguments.java"


# instance fields
.field blacklist mAbiListQuery:Z

.field blacklist mAllowlistedDataInfoList:[Ljava/lang/String;

.field blacklist mApiDenylistExemptions:[Ljava/lang/String;

.field blacklist mAppDataDir:Ljava/lang/String;

.field blacklist mBindMountAppDataDirs:Z

.field blacklist mBindMountAppStorageDirs:Z

.field blacklist mBootCompleted:Z

.field private blacklist mCapabilitiesSpecified:Z

.field blacklist mDisabledCompatChanges:[J

.field blacklist mEffectiveCapabilities:J

.field blacklist mGid:I

.field blacklist mGidSpecified:Z

.field blacklist mGids:[I

.field blacklist mHiddenApiAccessLogSampleRate:I

.field blacklist mHiddenApiAccessStatslogSampleRate:I

.field blacklist mInstructionSet:Ljava/lang/String;

.field blacklist mInvokeWith:Ljava/lang/String;

.field blacklist mIsTopApp:Z

.field blacklist mMountExternal:I

.field blacklist mNiceName:Ljava/lang/String;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mPermittedCapabilities:J

.field blacklist mPidQuery:Z

.field blacklist mPkgDataInfoList:[Ljava/lang/String;

.field blacklist mPreloadApp:Ljava/lang/String;

.field blacklist mPreloadDefault:Z

.field blacklist mPreloadPackage:Ljava/lang/String;

.field blacklist mPreloadPackageCacheKey:Ljava/lang/String;

.field blacklist mPreloadPackageLibFileName:Ljava/lang/String;

.field blacklist mPreloadPackageLibs:Ljava/lang/String;

.field blacklist mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mRemainingArgs:[Ljava/lang/String;

.field blacklist mRuntimeFlags:I

.field blacklist mSeInfo:Ljava/lang/String;

.field private blacklist mSeInfoSpecified:Z

.field blacklist mStartChildZygote:Z

.field blacklist mTargetSdkVersion:I

.field private blacklist mTargetSdkVersionSpecified:Z

.field blacklist mUid:I

.field blacklist mUidSpecified:Z

.field blacklist mUsapPoolEnabled:Z

.field blacklist mUsapPoolStatusSpecified:Z

.field public final blacklist mZygoteArgumentsExt:Lcom/android/internal/os/IZygoteArgumentsExt;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .locals 1
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 61
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 77
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    .line 210
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 247
    sget-object v0, Lcom/android/internal/os/ZygoteArgumentsExtPlugin;->constructor:Lcom/oplus/reflect/RefConstructor;

    invoke-virtual {v0}, Lcom/oplus/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IZygoteArgumentsExt;

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mZygoteArgumentsExt:Lcom/android/internal/os/IZygoteArgumentsExt;

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteArguments;->parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    .line 258
    return-void
.end method

.method private static blacklist getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 562
    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;

    .line 558
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;
    .locals 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getCount()I

    move-result v0

    .line 268
    .local v0, "argCount":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/ZygoteArguments;-><init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    :goto_0
    return-object v1
.end method

.method private blacklist parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .locals 12
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "unprocessedArg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 293
    .local v1, "curArg":I
    const/4 v2, 0x0

    .line 294
    .local v2, "seenRuntimeArgs":Z
    const/4 v3, 0x1

    .line 296
    .local v3, "expectRuntimeArgs":Z
    :goto_0
    const/4 v4, 0x0

    if-ge v1, p2, :cond_37

    .line 297
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    goto/16 :goto_7

    .line 302
    :cond_0
    const-string v6, "--setuid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Duplicate arg specified"

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 303
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v4, :cond_1

    .line 307
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 308
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_6

    .line 304
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_2
    const-string v6, "--setgid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v4, :cond_3

    .line 314
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 315
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_6

    .line 311
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_4
    const-string v6, "--target-sdk-version="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 317
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v4, :cond_5

    .line 321
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    .line 322
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_6

    .line 318
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Duplicate target-sdk-version specified"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_6
    const-string v6, "--runtime-args"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 324
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 325
    :cond_7
    const-string v6, "--runtime-flags="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 326
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_6

    .line 327
    :cond_8
    const-string v6, "--seinfo="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 328
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v4, :cond_9

    .line 332
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    .line 333
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 329
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :cond_a
    const-string v6, "--capabilities="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_d

    .line 335
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v6, :cond_c

    .line 339
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    .line 340
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "capString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "capStrings":[Ljava/lang/String;
    array-length v9, v7

    if-ne v9, v8, :cond_b

    .line 345
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 346
    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_1

    .line 348
    :cond_b
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 349
    aget-object v4, v7, v8

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 351
    .end local v6    # "capString":Ljava/lang/String;
    .end local v7    # "capStrings":[Ljava/lang/String;
    :goto_1
    goto/16 :goto_6

    .line 336
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    :cond_d
    const-string v6, "--rlimit="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x3

    if-eqz v6, :cond_11

    .line 353
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "limitStrings":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v10, :cond_10

    .line 359
    array-length v6, v4

    new-array v6, v6, [I

    .line 361
    .local v6, "rlimitTuple":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v9, v4

    if-ge v7, v9, :cond_e

    .line 362
    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v7

    .line 361
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 365
    .end local v7    # "i":I
    :cond_e
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v7, :cond_f

    .line 366
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    .line 369
    :cond_f
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v4    # "limitStrings":[Ljava/lang/String;
    .end local v6    # "rlimitTuple":[I
    goto/16 :goto_6

    .line 356
    .restart local v4    # "limitStrings":[Ljava/lang/String;
    :cond_10
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    .end local v4    # "limitStrings":[Ljava/lang/String;
    :cond_11
    const-string v6, "--setgroups="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 371
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v4, :cond_13

    .line 376
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    .line 380
    array-length v6, v4

    sub-int/2addr v6, v8

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_12

    .line 381
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v6

    .line 380
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 383
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_12
    goto/16 :goto_6

    .line 372
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    :cond_14
    const-string v6, "--invoke-with"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 384
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v4, :cond_15

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 390
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto/16 :goto_6

    .line 391
    :catch_0
    move-exception v4

    .line 392
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--invoke-with requires argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 385
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_15
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_16
    const-string v6, "--nice-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 396
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v4, :cond_17

    .line 400
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_6

    .line 397
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_18
    const-string v6, "--mount-external-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 402
    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 403
    :cond_19
    const-string v6, "--mount-external-installer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 404
    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 405
    :cond_1a
    const-string v6, "--mount-external-pass-through"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 406
    iput v10, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 407
    :cond_1b
    const-string v6, "--mount-external-android-writable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 408
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 411
    :cond_1c
    const-string v6, "--mount-external-oplus-android-writable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 412
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_6

    .line 414
    :cond_1d
    const-string v6, "--query-abi-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 415
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_6

    .line 416
    :cond_1e
    const-string v6, "--get-pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 417
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_6

    .line 418
    :cond_1f
    const-string v6, "--boot-completed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 419
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_6

    .line 420
    :cond_20
    const-string v6, "--instruction-set="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 421
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_6

    .line 422
    :cond_21
    const-string v6, "--app-data-dir="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 423
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_6

    .line 424
    :cond_22
    const-string v6, "--preload-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 425
    add-int/lit8 v1, v1, 0x1

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_6

    .line 427
    :cond_23
    const-string v6, "--preload-package"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 428
    add-int/lit8 v1, v1, 0x4

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibs:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibFileName:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageCacheKey:Ljava/lang/String;

    goto/16 :goto_6

    .line 433
    :cond_24
    const-string v6, "--preload-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 434
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    .line 435
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 436
    :cond_25
    const-string v6, "--start-child-zygote"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 437
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_6

    .line 438
    :cond_26
    const-string v6, "--set-api-denylist-exemptions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 441
    sub-int v4, p2, v1

    sub-int/2addr v4, v8

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    .line 442
    add-int/lit8 v1, v1, 0x1

    .line 443
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v1, p2, :cond_27

    .line 444
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 443
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 446
    .end local v4    # "i":I
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 447
    :cond_28
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 448
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "rateStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    nop

    .line 455
    const/4 v3, 0x0

    .line 456
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_6

    .line 451
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 452
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid log sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 456
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_29
    const-string v6, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 457
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 459
    .restart local v4    # "rateStr":Ljava/lang/String;
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 463
    nop

    .line 464
    const/4 v3, 0x0

    .line 465
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_6

    .line 460
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 461
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid statslog sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 465
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2a
    const-string v6, "--package-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 466
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_2b

    .line 469
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_6

    .line 467
    :cond_2b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 470
    :cond_2c
    const-string v6, "--usap-pool-enabled="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 471
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 472
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    .line 473
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 474
    :cond_2d
    const-string v6, "--is-top-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 475
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto/16 :goto_6

    .line 476
    :cond_2e
    const-string v6, "--disabled-compat-changes="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 477
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v4, :cond_30

    .line 480
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    .line 482
    .local v6, "length":I
    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 483
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v6, :cond_2f

    .line 484
    iget-object v9, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v10, v4, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v7

    .line 483
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 486
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "length":I
    .end local v7    # "i":I
    :cond_2f
    goto :goto_6

    .line 478
    :cond_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 486
    :cond_31
    const-string v6, "--pkg-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 487
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_6

    .line 488
    :cond_32
    const-string v6, "--allowlisted-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 489
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    goto :goto_6

    .line 490
    :cond_33
    const-string v6, "--bind-mount-storage-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 491
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_6

    .line 492
    :cond_34
    const-string v6, "--bind-mount-data-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 493
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    goto :goto_6

    .line 496
    :cond_35
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mZygoteArgumentsExt:Lcom/android/internal/os/IZygoteArgumentsExt;

    invoke-interface {v6, v5}, Lcom/android/internal/os/IZygoteArgumentsExt;->canParseArg(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 497
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mZygoteArgumentsExt:Lcom/android/internal/os/IZygoteArgumentsExt;

    invoke-interface {v4, v5}, Lcom/android/internal/os/IZygoteArgumentsExt;->doParseArg(Ljava/lang/String;)V

    .line 296
    .end local v5    # "arg":Ljava/lang/String;
    :goto_6
    add-int/2addr v1, v8

    goto/16 :goto_0

    .line 500
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_36
    move-object v0, v5

    .line 507
    .end local v5    # "arg":Ljava/lang/String;
    :cond_37
    :goto_7
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v5, :cond_39

    .line 508
    if-gt p2, v1, :cond_38

    goto/16 :goto_b

    .line 509
    :cond_38
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --boot-completed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    :cond_39
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v5, :cond_42

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v5, :cond_3a

    goto :goto_a

    .line 515
    :cond_3a
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-eqz v5, :cond_3c

    .line 516
    if-gt p2, v1, :cond_3b

    goto :goto_b

    .line 517
    :cond_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-package."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 520
    :cond_3c
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v5, :cond_3e

    .line 521
    if-gt p2, v1, :cond_3d

    goto :goto_b

    .line 522
    :cond_3d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-app."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_3e
    if-eqz v3, :cond_43

    .line 526
    if-nez v2, :cond_40

    .line 527
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected argument : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 528
    if-nez v0, :cond_3f

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_3f
    move-object v6, v0

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
    :cond_40
    sub-int v5, p2, v1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 532
    const/4 v6, 0x0

    .line 533
    .local v6, "i":I
    if-eqz v0, :cond_41

    .line 534
    aput-object v0, v5, v4

    .line 535
    add-int/lit8 v6, v6, 0x1

    .line 537
    :cond_41
    :goto_9
    sub-int v5, p2, v1

    if-ge v6, v5, :cond_43

    .line 538
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 537
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 512
    .end local v6    # "i":I
    :cond_42
    :goto_a
    if-gt p2, v1, :cond_48

    .line 542
    :cond_43
    :goto_b
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz v5, :cond_47

    .line 543
    const/4 v5, 0x0

    .line 544
    .local v5, "seenChildSocketArg":Z
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v7, v6

    :goto_c
    if-ge v4, v7, :cond_45

    aget-object v8, v6, v4

    .line 545
    .local v8, "arg":Ljava/lang/String;
    const-string v9, "--zygote-socket="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 546
    const/4 v5, 0x1

    .line 547
    goto :goto_d

    .line 544
    .end local v8    # "arg":Ljava/lang/String;
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 550
    :cond_45
    :goto_d
    if-eqz v5, :cond_46

    goto :goto_e

    .line 551
    :cond_46
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 555
    .end local v5    # "seenChildSocketArg":Z
    :cond_47
    :goto_e
    return-void

    .line 513
    :cond_48
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --query-abi-list."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
