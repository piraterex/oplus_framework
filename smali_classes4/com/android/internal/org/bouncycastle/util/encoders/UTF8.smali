.class public Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# static fields
.field private static final blacklist C_CR1:B = 0x1t

.field private static final blacklist C_CR2:B = 0x2t

.field private static final blacklist C_CR3:B = 0x3t

.field private static final blacklist C_ILL:B = 0x0t

.field private static final blacklist C_L2A:B = 0x4t

.field private static final blacklist C_L3A:B = 0x5t

.field private static final blacklist C_L3B:B = 0x6t

.field private static final blacklist C_L3C:B = 0x7t

.field private static final blacklist C_L4A:B = 0x8t

.field private static final blacklist C_L4B:B = 0x9t

.field private static final blacklist C_L4C:B = 0xat

.field private static final blacklist S_CS1:B = 0x0t

.field private static final blacklist S_CS2:B = 0x10t

.field private static final blacklist S_CS3:B = 0x20t

.field private static final blacklist S_END:B = -0x1t

.field private static final blacklist S_ERR:B = -0x2t

.field private static final blacklist S_P3A:B = 0x30t

.field private static final blacklist S_P3B:B = 0x40t

.field private static final blacklist S_P4A:B = 0x50t

.field private static final blacklist S_P4B:B = 0x60t

.field private static final blacklist firstUnitTable:[S

.field private static final blacklist transitionTable:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 39
    const/16 v0, 0x80

    new-array v1, v0, [S

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    .line 40
    const/16 v1, 0x70

    new-array v2, v1, [B

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    .line 52
    new-array v3, v0, [B

    .line 53
    .local v3, "categories":[B
    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 54
    const/16 v5, 0x10

    const/16 v7, 0x1f

    const/4 v8, 0x2

    invoke-static {v3, v5, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 55
    const/16 v7, 0x20

    const/16 v8, 0x3f

    const/4 v9, 0x3

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 56
    const/16 v7, 0x40

    const/16 v8, 0x41

    invoke-static {v3, v7, v8, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 57
    const/16 v7, 0x42

    const/16 v8, 0x5f

    const/4 v9, 0x4

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 58
    const/16 v7, 0x60

    const/4 v8, 0x5

    invoke-static {v3, v7, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 59
    const/16 v7, 0x61

    const/16 v8, 0x6c

    const/4 v9, 0x6

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 60
    const/16 v7, 0x6d

    const/4 v8, 0x7

    invoke-static {v3, v7, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 61
    const/16 v7, 0x6e

    const/16 v8, 0x6f

    invoke-static {v3, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 62
    const/16 v7, 0x8

    invoke-static {v3, v1, v1, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 63
    const/16 v1, 0x71

    const/16 v8, 0x73

    const/16 v9, 0x9

    invoke-static {v3, v1, v8, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 64
    const/16 v1, 0x74

    const/16 v8, 0xa

    invoke-static {v3, v1, v1, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 65
    const/16 v1, 0x75

    const/16 v8, 0x7f

    invoke-static {v3, v1, v8, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 67
    array-length v1, v2

    sub-int/2addr v1, v6

    const/4 v6, -0x2

    invoke-static {v2, v4, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 68
    const/16 v1, 0xb

    const/4 v6, -0x1

    invoke-static {v2, v7, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 69
    const/16 v6, 0x18

    const/16 v7, 0x1b

    invoke-static {v2, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 70
    const/16 v6, 0x28

    const/16 v7, 0x2b

    invoke-static {v2, v6, v7, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 71
    const/16 v6, 0x3a

    const/16 v7, 0x3b

    invoke-static {v2, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 72
    const/16 v6, 0x48

    const/16 v7, 0x49

    invoke-static {v2, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 73
    const/16 v4, 0x59

    const/16 v6, 0x5b

    invoke-static {v2, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 74
    const/16 v4, 0x68

    invoke-static {v2, v4, v4, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 76
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 77
    .local v2, "firstUnitMasks":[B
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    .line 79
    .local v1, "firstUnitTransitions":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 81
    aget-byte v5, v3, v4

    .line 83
    .local v5, "category":B
    aget-byte v6, v2, v5

    and-int/2addr v6, v4

    .line 84
    .local v6, "codePoint":I
    aget-byte v7, v1, v5

    .line 86
    .local v7, "state":B
    sget-object v8, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/lit8 v9, v6, 0x8

    or-int/2addr v9, v7

    int-to-short v9, v9

    aput-short v9, v8, v4

    .line 79
    .end local v5    # "category":B
    .end local v6    # "codePoint":I
    .end local v7    # "state":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "firstUnitTransitions":[B
    .end local v2    # "firstUnitMasks":[B
    .end local v3    # "categories":[B
    .end local v4    # "i":I
    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fill([BIIB)V
    .locals 1
    .param p0, "table"    # [B
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "b"    # B

    .line 44
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 46
    aput-byte p3, p0, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist transcodeToUTF16([B[C)I
    .locals 10
    .param p0, "utf8"    # [B
    .param p1, "utf16"    # [C

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .line 113
    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_8

    .line 115
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v0, p0, v0

    .line 116
    .local v0, "codeUnit":B
    const/4 v3, -0x1

    if-ltz v0, :cond_1

    .line 118
    array-length v4, p1

    if-lt v1, v4, :cond_0

    return v3

    .line 120
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    int-to-char v4, v0

    aput-char v4, p1, v1

    .line 121
    move v0, v2

    move v1, v3

    goto :goto_0

    .line 124
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_1
    sget-object v4, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 v5, v0, 0x7f

    aget-short v4, v4, v5

    .line 125
    .local v4, "first":S
    ushr-int/lit8 v5, v4, 0x8

    .line 126
    .local v5, "codePoint":I
    int-to-byte v6, v4

    move v9, v2

    move v2, v0

    move v0, v9

    .line 128
    .local v0, "i":I
    .local v2, "codeUnit":B
    .local v6, "state":B
    :goto_1
    if-ltz v6, :cond_3

    .line 130
    array-length v7, p0

    if-lt v0, v7, :cond_2

    return v3

    .line 132
    :cond_2
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    aget-byte v2, p0, v0

    .line 133
    shl-int/lit8 v0, v5, 0x6

    and-int/lit8 v8, v2, 0x3f

    or-int v5, v0, v8

    .line 134
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v8, v2, 0xff

    ushr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v6

    aget-byte v6, v0, v8

    move v0, v7

    goto :goto_1

    .line 137
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_3
    const/4 v7, -0x2

    if-ne v6, v7, :cond_4

    return v3

    .line 139
    :cond_4
    const v7, 0xffff

    if-gt v5, v7, :cond_6

    .line 141
    array-length v7, p1

    if-lt v1, v7, :cond_5

    return v3

    .line 144
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .restart local v3    # "j":I
    int-to-char v7, v5

    aput-char v7, p1, v1

    move v1, v3

    goto :goto_2

    .line 148
    .end local v3    # "j":I
    .restart local v1    # "j":I
    :cond_6
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-lt v1, v7, :cond_7

    return v3

    .line 151
    :cond_7
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .restart local v3    # "j":I
    const v7, 0xd7c0

    ushr-int/lit8 v8, v5, 0xa

    add-int/2addr v8, v7

    int-to-char v7, v8

    aput-char v7, p1, v1

    .line 152
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .restart local v1    # "j":I
    const v7, 0xdc00

    and-int/lit16 v8, v5, 0x3ff

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v3

    .line 154
    .end local v2    # "codeUnit":B
    .end local v4    # "first":S
    .end local v5    # "codePoint":I
    .end local v6    # "state":B
    :goto_2
    goto :goto_0

    .line 156
    :cond_8
    return v1
.end method
