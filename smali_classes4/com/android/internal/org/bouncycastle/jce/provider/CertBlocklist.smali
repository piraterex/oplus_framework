.class public Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;
.super Ljava/lang/Object;
.source "CertBlocklist.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field public final blacklist pubkeyBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "[B>;"
        }
    .end annotation
.end field

.field public final blacklist serialBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "androidData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/misc/keychain/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "blocklistRoot":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pubkey_blacklist.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "defaultPubkeyBlocklistPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "serial_blacklist.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "defaultSerialBlocklistPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readPublicKeyBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->pubkeyBlocklist:Ljava/util/Set;

    .line 55
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readSerialBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->serialBlocklist:Ljava/util/Set;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pubkeyBlocklistPath"    # Ljava/lang/String;
    .param p2, "serialBlocklistPath"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readPublicKeyBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->pubkeyBlocklist:Ljava/util/Set;

    .line 61
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readSerialBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->serialBlocklist:Ljava/util/Set;

    .line 62
    return-void
.end method

.method private static blacklist closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 118
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 126
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static blacklist isHex(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 66
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse hex value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isPubkeyHash(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pubkey hash length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->isHex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist readBlocklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not read blocklist"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 88
    nop

    .line 89
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 103
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 105
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v3, "byteCount":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 107
    nop

    .line 112
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    return-object v1

    .line 109
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v3    # "byteCount":I
    goto :goto_0

    .line 112
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    throw v1
.end method

.method private static blacklist readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readPublicKeyBlockList(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "[B>;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [[B

    .line 176
    const-string v2, "410f36363258f30b347d12ce4863e433437806a8"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 179
    const-string v2, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 182
    const-string v2, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 185
    const-string v2, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 188
    const-string v2, "e8f91200c65cee16e039b9f883841661635f81c5"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 192
    const-string v2, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 195
    const-string v2, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 198
    const-string v2, "783333c9687df63377efceddd82efa9101913e8e"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    .line 201
    const-string v2, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    .line 173
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readBlocklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "pubkeyBlocklist":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 208
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->isPubkeyHash(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_0
    sget-object v6, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tried to blocklist invalid pubkey "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 207
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return-object v0
.end method

.method private static blacklist readSerialBlockList(Ljava/lang/String;)Ljava/util/Set;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "077a59bcd53459601ca6907267a6dd1c"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "047ecbe9fca55f7bd09eae36e10cae1e"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "d8f35f4eb7872b2dab0692e315382fb0"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "b0b7133ed096f9b56fae91c874bd3ac0"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "9239d5348f40d1695a745470e1f23f43"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "e9028b9578e415dc1a710a2b88154447"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "d7558fdaf5f1105bb213282b707729a3"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "f5c86af36162f13a64f54f6dc9587c06"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "392a434f0e07df1f8aa305de34e0c229"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x8

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "3e75ced46b693021218830ae86a82a71"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x9

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->readBlocklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "serialBlocklist":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v2, v3

    .line 159
    .local v6, "value":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_1

    .line 160
    :catch_0
    move-exception v7

    .line 161
    .local v7, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tried to blocklist invalid serial number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist isPublicKeyBlockListed(Ljava/security/PublicKey;)Z
    .locals 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .line 221
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 222
    .local v0, "encoded":[B
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 223
    .local v1, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 224
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    .line 225
    .local v2, "out":[B
    invoke-interface {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 226
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->pubkeyBlocklist:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 227
    .local v5, "blocklisted":[B
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    const/4 v3, 0x1

    return v3

    .line 230
    .end local v5    # "blocklisted":[B
    :cond_0
    goto :goto_0

    .line 231
    :cond_1
    return v3
.end method

.method public blacklist isSerialNumberBlockListed(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "serial"    # Ljava/math/BigInteger;

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->serialBlocklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
