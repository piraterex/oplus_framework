.class public final Lcom/android/internal/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# static fields
.field private static blacklist LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 26
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Strings$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "%n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    .line 45
    .local v1, "ef":Ljava/lang/Exception;
    const-string v2, "\n"

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ef":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asCharArray([B)[C
    .locals 3
    .param p0, "bytes"    # [B

    .line 251
    array-length v0, p0

    new-array v0, v0, [C

    .line 253
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 255
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist fromByteArray([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 240
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static blacklist fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .line 52
    array-length v0, p0

    new-array v0, v0, [C

    .line 53
    .local v0, "chars":[C
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([B[C)I

    move-result v1

    .line 54
    .local v1, "len":I
    if-ltz v1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid UTF-8 input"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist lineSeparator()Ljava/lang/String;
    .locals 1

    .line 299
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist newList()Lcom/android/internal/org/bouncycastle/util/StringList;
    .locals 2

    .line 294
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;-><init>(Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl-IA;)V

    return-object v0
.end method

.method public static blacklist split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .line 263
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 264
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x1

    .line 267
    .local v1, "moreTokens":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 270
    .local v2, "tokenLocation":I
    if-lez v2, :cond_0

    .line 272
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "subString":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 274
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 278
    .end local v3    # "subString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 281
    .end local v2    # "tokenLocation":I
    :goto_1
    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 285
    .local v2, "res":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-eq v3, v4, :cond_2

    .line 287
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 289
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public static blacklist toByteArray(Ljava/lang/String;[BI)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "off"    # I

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 224
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 227
    .local v2, "c":C
    add-int v3, p2, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    .line 224
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static blacklist toByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 211
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 215
    .local v2, "ch":C
    int-to-byte v3, v2

    aput-byte v3, v0, v1

    .line 211
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist toByteArray([C)[B
    .locals 3
    .param p0, "chars"    # [C

    .line 196
    array-length v0, p0

    new-array v0, v0, [B

    .line 198
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 200
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 176
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 178
    aget-char v3, v1, v2

    .line 179
    .local v3, "ch":C
    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 182
    add-int/lit8 v4, v3, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 176
    .end local v3    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 188
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 191
    :cond_2
    return-object p0
.end method

.method public static blacklist toUTF8ByteArray([CLjava/io/OutputStream;)V
    .locals 8
    .param p0, "string"    # [C
    .param p1, "sOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    move-object v0, p0

    .line 86
    .local v0, "c":[C
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 90
    aget-char v2, v0, v1

    .line 92
    .local v2, "ch":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 94
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 96
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 98
    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 99
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 102
    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_4

    const v4, 0xdfff

    if-gt v2, v4, :cond_4

    .line 106
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    const-string v6, "invalid UTF-16 codepoint"

    if-ge v4, v5, :cond_3

    .line 110
    move v4, v2

    .line 111
    .local v4, "W1":C
    add-int/lit8 v1, v1, 0x1

    aget-char v2, v0, v1

    .line 112
    move v5, v2

    .line 115
    .local v5, "W2":C
    const v7, 0xdbff

    if-gt v4, v7, :cond_2

    .line 119
    and-int/lit16 v6, v4, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v7, v5, 0x3ff

    or-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int/2addr v6, v7

    .line 120
    .local v6, "codePoint":I
    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 121
    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 122
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 123
    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v3, v7

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 124
    .end local v4    # "W1":C
    .end local v5    # "W2":C
    .end local v6    # "codePoint":I
    goto :goto_1

    .line 117
    .restart local v4    # "W1":C
    .restart local v5    # "W2":C
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v4    # "W1":C
    .end local v5    # "W2":C
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_4
    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 128
    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 129
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 132
    :goto_1
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto/16 :goto_0

    .line 134
    :cond_5
    return-void
.end method

.method public static blacklist toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toUTF8ByteArray([C)[B
    .locals 4
    .param p0, "string"    # [C

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot encode string to byte array!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 147
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 149
    aget-char v3, v1, v2

    .line 150
    .local v3, "ch":C
    const/16 v4, 0x61

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 153
    add-int/lit8 v4, v3, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 147
    .end local v3    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 159
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 162
    :cond_2
    return-object p0
.end method
