.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mBoundToSecureUserId:J

.field private final greylist-max-o mCriticalToDeviceEncryption:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final blacklist mMaxUsageCount:I

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequred:Z


# direct methods
.method private constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZZZJZZZZI)V
    .locals 16
    .param p1, "keyValidityStart"    # Ljava/util/Date;
    .param p2, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p3, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p4, "purposes"    # I
    .param p5, "encryptionPaddings"    # [Ljava/lang/String;
    .param p6, "signaturePaddings"    # [Ljava/lang/String;
    .param p7, "digests"    # [Ljava/lang/String;
    .param p8, "blockModes"    # [Ljava/lang/String;
    .param p9, "randomizedEncryptionRequired"    # Z
    .param p10, "userAuthenticationRequired"    # Z
    .param p11, "userAuthenticationType"    # I
    .param p12, "userAuthenticationValidityDurationSeconds"    # I
    .param p13, "userPresenceRequred"    # Z
    .param p14, "userAuthenticationValidWhileOnBody"    # Z
    .param p15, "invalidatedByBiometricEnrollment"    # Z
    .param p16, "boundToSecureUserId"    # J
    .param p18, "criticalToDeviceEncryption"    # Z
    .param p19, "userConfirmationRequired"    # Z
    .param p20, "unlockedDeviceRequired"    # Z
    .param p21, "isStrongBoxBacked"    # Z
    .param p22, "maxUsageCount"    # I

    .line 262
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    .line 264
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 265
    invoke-static/range {p3 .. p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 266
    move/from16 v1, p4

    iput v1, v0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    .line 267
    nop

    .line 268
    invoke-static/range {p5 .. p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    .line 269
    nop

    .line 270
    invoke-static/range {p6 .. p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    .line 271
    invoke-static/range {p7 .. p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    .line 272
    invoke-static/range {p8 .. p8}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    .line 273
    move/from16 v2, p9

    iput-boolean v2, v0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    .line 274
    move/from16 v3, p10

    iput-boolean v3, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    .line 275
    move/from16 v4, p11

    iput v4, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    .line 276
    move/from16 v5, p12

    iput v5, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    .line 277
    move/from16 v6, p13

    iput-boolean v6, v0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    .line 278
    move/from16 v7, p14

    iput-boolean v7, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    .line 279
    move/from16 v8, p15

    iput-boolean v8, v0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    .line 280
    move-wide/from16 v9, p16

    iput-wide v9, v0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    .line 281
    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    .line 282
    move/from16 v12, p19

    iput-boolean v12, v0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    .line 283
    move/from16 v13, p20

    iput-boolean v13, v0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    .line 284
    move/from16 v14, p21

    iput-boolean v14, v0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    .line 285
    move/from16 v15, p22

    iput v15, v0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    .line 286
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZZZJZZZZILandroid/security/keystore/KeyProtection-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p22}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZZZJZZZZI)V

    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoundToSpecificSecureUserId()J
    .locals 2

    .line 522
    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 2

    .line 364
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 1

    .line 295
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxUsageCount()I
    .locals 1

    .line 562
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    return v0
.end method

.method public whitelist getPurposes()I
    .locals 1

    .line 325
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 1

    .line 440
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .line 458
    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public greylist-max-o isCriticalToDeviceEncryption()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public whitelist isDigestsSpecified()Z
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public greylist-max-o isStrongBoxBacked()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    return v0
.end method

.method public whitelist isUserPresenceRequired()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    return v0
.end method
