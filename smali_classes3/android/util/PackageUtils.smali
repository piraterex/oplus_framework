.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final blacklist HIGH_RAM_BUFFER_SIZE_BYTES:I = 0xf4240

.field private static final blacklist LOW_RAM_BUFFER_SIZE_BYTES:I = 0x3e8


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static greylist-max-o computeSha256Digest([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    .line 156
    .local v0, "sha256DigestBytes":[B
    if-nez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    return-object v1

    .line 160
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 161
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    :cond_1
    array-length v2, v0

    .line 165
    .local v2, "length":I
    new-array v3, v2, [Ljava/lang/String;

    .line 166
    .local v3, "pieces":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 167
    aget-byte v5, v0, v4

    invoke-static {v5, v1}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "index":I
    :cond_2
    invoke-static {p1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o computeSha256DigestBytes([B)[B
    .locals 2
    .param p0, "data"    # [B

    .line 130
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 136
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileBuffer"    # [B

    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeSha256DigestForLargeFile(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileBuffer"    # [B
    .param p2, "separator"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 208
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    nop

    .line 214
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, "f":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/security/DigestInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 218
    .local v3, "digestInputStream":Ljava/security/DigestInputStream;
    :goto_0
    invoke-virtual {v3, p1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 222
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    :cond_0
    nop

    .line 224
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 226
    .local v0, "resultBytes":[B
    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 227
    invoke-static {v0, v3}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 230
    :cond_1
    array-length v4, v0

    .line 231
    .local v4, "length":I
    new-array v5, v4, [Ljava/lang/String;

    .line 232
    .local v5, "pieces":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 233
    aget-byte v7, v0, v6

    invoke-static {v7, v3}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 235
    .end local v6    # "index":I
    :cond_2
    invoke-static {p2, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 219
    .end local v0    # "resultBytes":[B
    .end local v4    # "length":I
    .end local v5    # "pieces":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    return-object v0

    .line 209
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 211
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0
.end method

.method public static greylist-max-o computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;

    .line 85
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 86
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    invoke-static {p0, v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "sha256Digests":[Ljava/lang/String;
    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "sha256Digests"    # [Ljava/lang/String;

    .line 104
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 105
    aget-object v0, p0, v1

    return-object v0

    .line 109
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 114
    .local v3, "sha256Digest":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v4

    .line 112
    .end local v3    # "sha256Digest":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .locals 1
    .param p0, "signatures"    # [Landroid/content/pm/Signature;

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist computeSignaturesSha256Digests([Landroid/content/pm/Signature;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .param p1, "separator"    # Ljava/lang/String;

    .line 67
    array-length v0, p0

    .line 68
    .local v0, "signatureCount":I
    new-array v1, v0, [Ljava/lang/String;

    .line 69
    .local v1, "digests":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 70
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/PackageUtils;->computeSha256Digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static blacklist createLargeFileBuffer()[B
    .locals 2

    .line 181
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const v0, 0xf4240

    .line 183
    .local v0, "bufferSize":I
    :goto_0
    new-array v1, v0, [B

    return-object v1
.end method
