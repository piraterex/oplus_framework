.class public Lcom/android/internal/widget/LockscreenCredential;
.super Ljava/lang/Object;
.source "LockscreenCredential.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCredential:[B

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockscreenCredential$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "credential"    # [B

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 77
    array-length v2, p2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 80
    :cond_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 83
    array-length v2, p2

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 85
    :goto_2
    iput p1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 86
    iput-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(I[BLcom/android/internal/widget/LockscreenCredential-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-void
.end method

.method private static blacklist charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .line 390
    if-nez p0, :cond_0

    .line 391
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 393
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 394
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 395
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static blacklist createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "password"    # [B

    .line 119
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    array-length v1, p0

    .line 120
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 119
    return-object v0
.end method

.method public static blacklist createNone()Lcom/android/internal/widget/LockscreenCredential;
    .locals 3

    .line 93
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "password"    # Ljava/lang/CharSequence;

    .line 108
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 109
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 108
    return-object v0
.end method

.method public static blacklist createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1
    .param p0, "password"    # Ljava/lang/CharSequence;

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Lcom/android/internal/widget/LockscreenCredential;"
        }
    .end annotation

    .line 100
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 101
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 100
    return-object v0
.end method

.method public static blacklist createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "pin"    # Ljava/lang/CharSequence;

    .line 127
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 128
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 127
    return-object v0
.end method

.method public static blacklist createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1
    .param p0, "pin"    # Ljava/lang/CharSequence;

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method private blacklist ensureNotZeroized()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Credential is already zeroized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 157
    return-void
.end method

.method public static blacklist legacyPasswordToHash([B[B)Ljava/lang/String;
    .locals 7
    .param p0, "password"    # [B
    .param p1, "salt"    # [B

    .line 313
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    :try_start_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 322
    .local v0, "saltedPassword":[B
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 324
    .local v1, "sha1":[B
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 326
    .local v2, "md5":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 327
    .local v4, "combined":[B
    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    array-length v5, v1

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    invoke-static {v4}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v5

    .line 331
    .local v5, "hexEncoded":[C
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 332
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 333
    .end local v0    # "saltedPassword":[B
    .end local v1    # "sha1":[B
    .end local v2    # "md5":[B
    .end local v4    # "combined":[B
    .end local v5    # "hexEncoded":[C
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 314
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist passwordToHistoryHash([B[B[B)Ljava/lang/String;
    .locals 5
    .param p0, "passwordToHash"    # [B
    .param p1, "salt"    # [B
    .param p2, "hashFactor"    # [B

    .line 274
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 280
    .local v0, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 281
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 283
    .local v1, "saltedPassword":[B
    array-length v2, p0

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 285
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 286
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 287
    .end local v0    # "sha256":Ljava/security/MessageDigest;
    .end local v1    # "saltedPassword":[B
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist checkAgainstStoredType(I)Z
    .locals 4
    .param p1, "storedCredentialType"    # I

    .line 256
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public blacklist checkLength()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 238
    return-void

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pattern must not be null and at least 4 dots long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 247
    :cond_3
    return-void

    .line 241
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 245
    return-void

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password must not be null and at least of length 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 366
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist duplicate()Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    .line 210
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 211
    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v2, :cond_0

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 210
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 376
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 378
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 379
    .local v1, "other":Lcom/android/internal/widget/LockscreenCredential;
    iget v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getCredential()[B
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 165
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 371
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isNone()Z
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 181
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPassword()Z
    .locals 2

    .line 198
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 199
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPattern()Z
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 187
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isPin()Z
    .locals 2

    .line 192
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 193
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist legacyPasswordToHash([B)Ljava/lang/String;
    .locals 1
    .param p1, "salt"    # [B

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist passwordToHistoryHash([B[B)Ljava/lang/String;
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "hashFactor"    # [B

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v0, v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 340
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 342
    return-void
.end method

.method public blacklist zeroize()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_0

    .line 219
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 222
    :cond_0
    return-void
.end method
