.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "OpenSSHPrivateKeySpec.java"


# instance fields
.field private final blacklist format:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 3
    .param p1, "encodedKey"    # [B

    .line 35
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 37
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 39
    const-string v0, "ASN.1"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_0
    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    .line 43
    const-string v0, "OpenSSH"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown byte encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    return-object v0
.end method
