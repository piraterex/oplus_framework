.class public final Landroid/security/keystore/ParcelableKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "ParcelableKeyGenParameterSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_EC:I = 0x3

.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_NONE:I = 0x1

.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_RSA:I = 0x2

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/ParcelableKeyGenParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 214
    new-instance v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;

    invoke-direct {v0}, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;-><init>()V

    sput-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 65
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 127
    .local v34, "keystoreAlias":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 128
    .local v35, "purposes":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 129
    .local v36, "namespace":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 131
    .local v37, "keySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 132
    .local v12, "keySpecType":I
    const/4 v0, 0x0

    .line 133
    .local v0, "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v1, 0x1

    if-ne v12, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    move-object/from16 v38, v0

    goto :goto_0

    .line 135
    :cond_0
    const/4 v2, 0x2

    if-ne v12, v2, :cond_1

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "rsaKeySize":I
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 138
    .local v2, "publicExponent":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object v0, v3

    .line 139
    .end local v1    # "rsaKeySize":I
    .end local v2    # "publicExponent":Ljava/math/BigInteger;
    move-object/from16 v38, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v12, v2, :cond_2

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "stdName":Ljava/lang/String;
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v2, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 142
    .end local v1    # "stdName":Ljava/lang/String;
    move-object/from16 v38, v0

    .line 147
    .end local v0    # "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .local v38, "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 148
    .local v5, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 149
    .local v6, "certificateSerialNumber":Ljava/math/BigInteger;
    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 150
    .local v7, "certificateNotBefore":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 151
    .local v8, "certificateNotAfter":Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v39

    .local v39, "keyValidityStartDate":Ljava/util/Date;
    move-object/from16 v9, v39

    .line 152
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v40

    .local v40, "keyValidityForOriginationEnd":Ljava/util/Date;
    move-object/from16 v10, v40

    .line 153
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v41

    .local v41, "keyValidityForConsumptionEnd":Ljava/util/Date;
    move-object/from16 v11, v41

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v42

    .local v42, "digests":[Ljava/lang/String;
    move-object/from16 v13, v42

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v43

    .local v43, "encryptionPaddings":[Ljava/lang/String;
    move-object/from16 v14, v43

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v44

    .local v44, "signaturePaddings":[Ljava/lang/String;
    move-object/from16 v15, v44

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v45

    .local v45, "blockModes":[Ljava/lang/String;
    move-object/from16 v16, v45

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v46

    .local v46, "randomizedEncryptionRequired":Z
    move/from16 v17, v46

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v47

    .local v47, "userAuthenticationRequired":Z
    move/from16 v18, v47

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .local v48, "userAuthenticationValidityDurationSeconds":I
    move/from16 v19, v48

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v49

    .local v49, "userAuthenticationTypes":I
    move/from16 v20, v49

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v50

    .local v50, "userPresenceRequired":Z
    move/from16 v21, v50

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v51

    .local v51, "attestationChallenge":[B
    move-object/from16 v22, v51

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v52

    .local v52, "devicePropertiesAttestationIncluded":Z
    move/from16 v23, v52

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v53

    .local v53, "attestationIds":[I
    move-object/from16 v24, v53

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v54

    .local v54, "uniqueIdIncluded":Z
    move/from16 v25, v54

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v55

    .local v55, "userAuthenticationValidWhileOnBody":Z
    move/from16 v26, v55

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v56

    .local v56, "invalidatedByBiometricEnrollment":Z
    move/from16 v27, v56

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v57

    .local v57, "isStrongBoxBacked":Z
    move/from16 v28, v57

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v58

    .local v58, "userConfirmationRequired":Z
    move/from16 v29, v58

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v59

    .local v59, "unlockedDeviceRequired":Z
    move/from16 v30, v59

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v60

    .local v60, "criticalToDeviceEncryption":Z
    move/from16 v31, v60

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .local v61, "maxUsageCount":I
    move/from16 v32, v61

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .local v62, "attestKeyAlias":Ljava/lang/String;
    move-object/from16 v33, v62

    .line 178
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v0, v4

    move-object/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v63, v4

    move-object/from16 v4, v38

    move/from16 v64, v12

    .end local v12    # "keySpecType":I
    .local v64, "keySpecType":I
    move/from16 v12, v35

    invoke-direct/range {v0 .. v33}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v0, v63

    iput-object v0, v2, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 212
    return-void

    .line 143
    .end local v5    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "certificateSerialNumber":Ljava/math/BigInteger;
    .end local v7    # "certificateNotBefore":Ljava/util/Date;
    .end local v8    # "certificateNotAfter":Ljava/util/Date;
    .end local v38    # "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v39    # "keyValidityStartDate":Ljava/util/Date;
    .end local v40    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v41    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v42    # "digests":[Ljava/lang/String;
    .end local v43    # "encryptionPaddings":[Ljava/lang/String;
    .end local v44    # "signaturePaddings":[Ljava/lang/String;
    .end local v45    # "blockModes":[Ljava/lang/String;
    .end local v46    # "randomizedEncryptionRequired":Z
    .end local v47    # "userAuthenticationRequired":Z
    .end local v48    # "userAuthenticationValidityDurationSeconds":I
    .end local v49    # "userAuthenticationTypes":I
    .end local v50    # "userPresenceRequired":Z
    .end local v51    # "attestationChallenge":[B
    .end local v52    # "devicePropertiesAttestationIncluded":Z
    .end local v53    # "attestationIds":[I
    .end local v54    # "uniqueIdIncluded":Z
    .end local v55    # "userAuthenticationValidWhileOnBody":Z
    .end local v56    # "invalidatedByBiometricEnrollment":Z
    .end local v57    # "isStrongBoxBacked":Z
    .end local v58    # "userConfirmationRequired":Z
    .end local v59    # "unlockedDeviceRequired":Z
    .end local v60    # "criticalToDeviceEncryption":Z
    .end local v61    # "maxUsageCount":I
    .end local v62    # "attestKeyAlias":Ljava/lang/String;
    .end local v64    # "keySpecType":I
    .restart local v0    # "algorithmSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v12    # "keySpecType":I
    :cond_2
    move/from16 v64, v12

    .end local v12    # "keySpecType":I
    .restart local v64    # "keySpecType":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 144
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "Unknown algorithm parameter spec: %d"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/keystore/ParcelableKeyGenParameterSpec-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 0
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 44
    return-void
.end method

.method private static greylist-max-o readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 118
    .local v0, "hasDate":Z
    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 121
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "date"    # Ljava/util/Date;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getSpec()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 67
    .local v0, "algoSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    :cond_0
    instance-of v2, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v2, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 71
    .local v1, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    .end local v1    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v2, :cond_3

    .line 75
    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    .line 76
    .local v1, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    .end local v1    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    nop

    .line 82
    :goto_0
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 83
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 84
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 87
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 88
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 89
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 94
    :goto_1
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserPresenceRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 102
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 105
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserConfirmationRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUnlockedDeviceRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void

    .line 79
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Unknown algorithm parameter spec: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
