.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInsideSecureHardware:Z

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final greylist-max-o mOrigin:I

.field private final greylist-max-o mPurposes:I

.field private final blacklist mRemainingUsageCount:I

.field private final blacklist mSecurityLevel:I

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mTrustedUserPresenceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final greylist-max-o mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZII)V
    .locals 16
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "insideSecureHardware"    # Z
    .param p3, "origin"    # I
    .param p4, "keySize"    # I
    .param p5, "keyValidityStart"    # Ljava/util/Date;
    .param p6, "keyValidityForOriginationEnd"    # Ljava/util/Date;
    .param p7, "keyValidityForConsumptionEnd"    # Ljava/util/Date;
    .param p8, "purposes"    # I
    .param p9, "encryptionPaddings"    # [Ljava/lang/String;
    .param p10, "signaturePaddings"    # [Ljava/lang/String;
    .param p11, "digests"    # [Ljava/lang/String;
    .param p12, "blockModes"    # [Ljava/lang/String;
    .param p13, "userAuthenticationRequired"    # Z
    .param p14, "userAuthenticationValidityDurationSeconds"    # I
    .param p15, "userAuthenticationType"    # I
    .param p16, "userAuthenticationRequirementEnforcedBySecureHardware"    # Z
    .param p17, "userAuthenticationValidWhileOnBody"    # Z
    .param p18, "trustedUserPresenceRequired"    # Z
    .param p19, "invalidatedByBiometricEnrollment"    # Z
    .param p20, "userConfirmationRequired"    # Z
    .param p21, "securityLevel"    # I
    .param p22, "remainingUsageCount"    # I

    .line 114
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    .line 116
    move/from16 v2, p2

    iput-boolean v2, v0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    .line 117
    move/from16 v3, p3

    iput v3, v0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    .line 118
    move/from16 v4, p4

    iput v4, v0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    .line 119
    invoke-static/range {p5 .. p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    .line 120
    invoke-static/range {p6 .. p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 121
    invoke-static/range {p7 .. p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    .line 122
    move/from16 v5, p8

    iput v5, v0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    .line 123
    nop

    .line 124
    invoke-static/range {p9 .. p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    .line 125
    nop

    .line 126
    invoke-static/range {p10 .. p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    .line 127
    invoke-static/range {p11 .. p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    .line 128
    invoke-static/range {p12 .. p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    .line 129
    move/from16 v6, p13

    iput-boolean v6, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    .line 130
    move/from16 v7, p14

    iput v7, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    .line 131
    move/from16 v8, p15

    iput v8, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    .line 132
    move/from16 v9, p16

    iput-boolean v9, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    .line 134
    move/from16 v10, p17

    iput-boolean v10, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    .line 135
    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    .line 136
    move/from16 v12, p19

    iput-boolean v12, v0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    .line 137
    move/from16 v13, p20

    iput-boolean v13, v0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    .line 138
    move/from16 v14, p21

    iput v14, v0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    .line 139
    move/from16 v15, p22

    iput v15, v0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeySize()I
    .locals 1

    .line 172
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOrigin()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    return v0
.end method

.method public whitelist getPurposes()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    return v0
.end method

.method public whitelist getRemainingUsageCount()I
    .locals 1

    .line 389
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    return v0
.end method

.method public whitelist getSecurityLevel()I
    .locals 1

    .line 378
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 1

    .line 328
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    .line 312
    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public whitelist isInsideSecureHardware()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isTrustedUserPresenceRequired()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    return v0
.end method
