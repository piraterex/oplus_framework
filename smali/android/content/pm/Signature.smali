.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCertificateChain:[Ljava/security/cert/Certificate;

.field private blacklist mFlags:I

.field private greylist-max-o mHashCode:I

.field private greylist-max-o mHaveHashCode:Z

.field private final greylist-max-o mSignature:[B

.field private greylist-max-o mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 288
    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/Signature;)V
    .locals 3
    .param p1, "other"    # Landroid/content/pm/Signature;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iget-object v0, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 136
    iget-object v0, p1, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 137
    .local v0, "otherCertificateChain":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 138
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    iput-object v1, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 141
    :cond_0
    iget v1, p1, Landroid/content/pm/Signature;->mFlags:I

    iput v1, p0, Landroid/content/pm/Signature;->mFlags:I

    .line 142
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 307
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/Signature-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 111
    .local v0, "input":[B
    array-length v1, v0

    .line 113
    .local v1, "N":I
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 117
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    .line 118
    .local v2, "sig":[B
    const/4 v3, 0x0

    .line 120
    .local v3, "sigIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 121
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v4, v0, v4

    invoke-static {v4}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v4

    .line 122
    .local v4, "hi":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v5, v0, v5

    invoke-static {v5}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v5

    .line 123
    .local v5, "lo":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "sigIndex":I
    .local v7, "sigIndex":I
    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    .line 124
    .end local v4    # "hi":I
    .end local v5    # "lo":I
    move v4, v6

    move v3, v7

    goto :goto_0

    .line 126
    .end local v6    # "i":I
    .end local v7    # "sigIndex":I
    .restart local v3    # "sigIndex":I
    :cond_0
    iput-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 127
    return-void

    .line 114
    .end local v2    # "sig":[B
    .end local v3    # "sigIndex":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not even"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor whitelist <init>([B)V
    .locals 1
    .param p1, "signature"    # [B

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 73
    return-void
.end method

.method public constructor greylist-max-o <init>([Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "certificateChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 84
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 85
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 87
    :cond_0
    return-void
.end method

.method public static greylist-max-o areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z
    .locals 4
    .param p0, "a"    # Landroid/content/pm/Signature;
    .param p1, "b"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 363
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 365
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-static {v0, p0}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v1

    .line 366
    .local v1, "aPrime":Landroid/content/pm/Signature;
    invoke-static {v0, p1}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v2

    .line 368
    .local v2, "bPrime":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static greylist-max-o areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 5
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 334
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 336
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    array-length v1, p0

    new-array v1, v1, [Landroid/content/pm/Signature;

    .line 337
    .local v1, "aPrime":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 338
    aget-object v3, p0, v2

    invoke-static {v0, v3}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v1, v2

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "i":I
    :cond_0
    array-length v2, p1

    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 341
    .local v2, "bPrime":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 342
    aget-object v4, p1, v3

    invoke-static {v0, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v2, v3

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    return v3
.end method

.method public static greylist-max-o areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 2
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;

    .line 315
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0
.end method

.method public static greylist-max-o bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 6
    .param p0, "cf"    # Ljava/security/cert/CertificateFactory;
    .param p1, "s"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 380
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 381
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([B)V

    .line 383
    .local v2, "sPrime":Landroid/content/pm/Signature;
    iget-object v3, v2, Landroid/content/pm/Signature;->mSignature:[B

    array-length v3, v3

    iget-object v4, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 388
    return-object v2

    .line 384
    :cond_0
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bounced cert length looks fishy; before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/Signature;->mSignature:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final greylist-max-o parseHexDigit(I)I
    .locals 3
    .param p0, "nibble"    # I

    .line 90
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 91
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 92
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 93
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 94
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 95
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in hex string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 257
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 258
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/content/pm/Signature;

    .line 261
    .local v1, "other":Landroid/content/pm/Signature;
    if-eq p0, v1, :cond_0

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v3, v1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 263
    .end local v1    # "other":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 264
    :cond_2
    nop

    .line 265
    :goto_0
    return v0
.end method

.method public greylist-max-o getChainSignatures()[Landroid/content/pm/Signature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 240
    new-array v0, v2, [Landroid/content/pm/Signature;

    aput-object p0, v0, v1

    return-object v0

    .line 243
    :cond_0
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v2, v3, [Landroid/content/pm/Signature;

    .line 244
    .local v2, "chain":[Landroid/content/pm/Signature;
    aput-object p0, v2, v1

    .line 246
    const/4 v3, 0x1

    .line 247
    .local v3, "i":I
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 248
    .local v5, "c":Ljava/security/cert/Certificate;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    new-instance v7, Landroid/content/pm/Signature;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v2, v3

    .line 247
    .end local v5    # "c":Ljava/security/cert/Certificate;
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_0

    .line 251
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 157
    iget v0, p0, Landroid/content/pm/Signature;->mFlags:I

    return v0
.end method

.method public greylist getPublicKey()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 225
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 226
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 228
    .local v2, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 270
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_0

    .line 271
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 277
    return v0
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 149
    iput p1, p0, Landroid/content/pm/Signature;->mFlags:I

    .line 150
    return-void
.end method

.method public whitelist toByteArray()[B
    .locals 4

    .line 211
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 212
    .local v1, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v1
.end method

.method public whitelist toChars()[C
    .locals 1

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist toChars([C[I)[C
    .locals 10
    .param p1, "existingArray"    # [C
    .param p2, "outLen"    # [I

    .line 178
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 179
    .local v0, "sig":[B
    array-length v1, v0

    .line 180
    .local v1, "N":I
    mul-int/lit8 v2, v1, 0x2

    .line 181
    .local v2, "N2":I
    if-eqz p1, :cond_1

    array-length v3, p1

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    :goto_0
    new-array v3, v2, [C

    .line 183
    .local v3, "text":[C
    :goto_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 184
    aget-byte v5, v0, v4

    .line 185
    .local v5, "v":B
    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 186
    .local v6, "d":I
    mul-int/lit8 v7, v4, 0x2

    const/16 v8, 0xa

    if-lt v6, v8, :cond_2

    add-int/lit8 v9, v6, 0x61

    sub-int/2addr v9, v8

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v6, 0x30

    :goto_3
    int-to-char v9, v9

    aput-char v9, v3, v7

    .line 187
    and-int/lit8 v6, v5, 0xf

    .line 188
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v8, :cond_3

    add-int/lit8 v9, v6, 0x61

    sub-int/2addr v9, v8

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v6, 0x30

    :goto_4
    int-to-char v8, v9

    aput-char v8, v3, v7

    .line 183
    .end local v5    # "v":B
    .end local v6    # "d":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    .end local v4    # "j":I
    :cond_4
    if-eqz p2, :cond_5

    const/4 v4, 0x0

    aput v1, p2, v4

    .line 191
    :cond_5
    return-object v3
.end method

.method public whitelist toCharsString()Ljava/lang/String;
    .locals 3

    .line 198
    iget-object v0, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 200
    return-object v0

    .line 202
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    .line 203
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    .line 204
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 285
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 286
    return-void
.end method

.method public blacklist writeToXmlAttributeBytesHex(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-interface {p1, p2, p3, v0}, Landroid/util/TypedXmlSerializer;->attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    return-void
.end method
