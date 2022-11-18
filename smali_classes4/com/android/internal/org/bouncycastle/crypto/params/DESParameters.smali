.class public Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.source "DESParameters.java"


# static fields
.field public static final blacklist DES_KEY_LENGTH:I = 0x8

.field private static blacklist DES_weak_keys:[B = null

.field private static final blacklist N_DES_WEAK_KEYS:I = 0x10


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public constructor blacklist <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    .line 13
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 15
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DES key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isWeakKey([BI)Z
    .locals 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I

    .line 69
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 76
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 78
    add-int v3, v2, p1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    mul-int/lit8 v5, v0, 0x8

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_0

    .line 80
    nop

    .line 74
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v2    # "j":I
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 86
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key material too short."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setOddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 100
    aget-byte v1, p0, v0

    .line 101
    .local v1, "b":I
    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 98
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
