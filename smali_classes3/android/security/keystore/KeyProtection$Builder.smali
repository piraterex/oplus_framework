.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestKeyAlias:Ljava/lang/String;

.field private greylist-max-o mBlockModes:[Ljava/lang/String;

.field private greylist-max-o mBoundToSecureUserId:J

.field private greylist-max-o mCriticalToDeviceEncryption:Z

.field private greylist-max-o mDigests:[Ljava/lang/String;

.field private greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private greylist-max-o mIsStrongBoxBacked:Z

.field private greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private blacklist mMaxUsageCount:I

.field private greylist-max-o mPurposes:I

.field private greylist-max-o mRandomizedEncryptionRequired:Z

.field private greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private greylist-max-o mUnlockedDeviceRequired:Z

.field private greylist-max-o mUserAuthenticationRequired:Z

.field private blacklist mUserAuthenticationType:I

.field private greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private greylist-max-o mUserConfirmationRequired:Z

.field private greylist-max-o mUserPresenceRequired:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 4
    .param p1, "purposes"    # I

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    .line 580
    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 581
    const/4 v2, 0x2

    iput v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    .line 583
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    .line 585
    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 587
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    .line 589
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    .line 590
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    .line 591
    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    .line 592
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mAttestKeyAlias:Ljava/lang/String;

    .line 604
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    .line 605
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/KeyProtection;
    .locals 28

    .line 1106
    move-object/from16 v0, p0

    new-instance v25, Landroid/security/keystore/KeyProtection;

    move-object/from16 v1, v25

    iget-object v2, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    iget-object v3, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v4, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v5, v0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    iget-object v6, v0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    iget-object v7, v0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v8, v0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    iget-object v9, v0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    iget-boolean v10, v0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    iget-boolean v11, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    iget v12, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    iget v13, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iget-boolean v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v16, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    move/from16 v22, v1

    iget v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    move/from16 v23, v1

    const/16 v24, 0x0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZZZJZZZZILandroid/security/keystore/KeyProtection-IA;)V

    return-object v25
.end method

.method public varargs whitelist setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "blockModes"    # [Ljava/lang/String;

    .line 737
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    .line 738
    return-object p0
.end method

.method public blacklist setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "secureUserId"    # J

    .line 1018
    iput-wide p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    .line 1019
    return-object p0
.end method

.method public greylist-max-o setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "critical"    # Z

    .line 1032
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    .line 1033
    return-object p0
.end method

.method public varargs whitelist setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "digests"    # [Ljava/lang/String;

    .line 722
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    .line 723
    return-object p0
.end method

.method public varargs whitelist setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 682
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    .line 683
    return-object p0
.end method

.method public whitelist setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "invalidateKey"    # Z

    .line 997
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    .line 998
    return-object p0
.end method

.method public whitelist setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "isStrongBoxBacked"    # Z

    .line 1054
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    .line 1055
    return-object p0
.end method

.method public whitelist setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .line 631
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 632
    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    .line 633
    return-object p0
.end method

.method public whitelist setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .line 659
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 660
    return-object p0
.end method

.method public whitelist setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "endDate"    # Ljava/util/Date;

    .line 645
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 646
    return-object p0
.end method

.method public whitelist setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;

    .line 616
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    .line 617
    return-object p0
.end method

.method public whitelist setMaxUsageCount(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2
    .param p1, "maxUsageCount"    # I

    .line 1092
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxUsageCount is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_1
    :goto_0
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    .line 1094
    return-object p0
.end method

.method public whitelist setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 777
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    .line 778
    return-object p0
.end method

.method public varargs whitelist setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1
    .param p1, "paddings"    # [Ljava/lang/String;

    .line 698
    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    .line 699
    return-object p0
.end method

.method public whitelist setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "unlockedDeviceRequired"    # Z

    .line 1045
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    .line 1046
    return-object p0
.end method

.method public whitelist setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "type"    # I

    .line 928
    if-ltz p1, :cond_0

    .line 931
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    .line 932
    iput p2, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    .line 933
    return-object p0

    .line 929
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be 0 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 818
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    .line 819
    return-object p0
.end method

.method public whitelist setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "remainsValid"    # Z

    .line 973
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    .line 974
    return-object p0
.end method

.method public whitelist setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 885
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    .line 888
    if-ne p1, v0, :cond_0

    .line 889
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    return-object v0

    .line 891
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    return-object v0

    .line 886
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserConfirmationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 841
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    .line 842
    return-object p0
.end method

.method public whitelist setUserPresenceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0
    .param p1, "required"    # Z

    .line 950
    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    .line 951
    return-object p0
.end method
