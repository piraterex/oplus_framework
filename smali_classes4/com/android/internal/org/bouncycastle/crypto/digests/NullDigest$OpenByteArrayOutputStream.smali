.class Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "NullDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenByteArrayOutputStream"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist copy([BI)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->buf:[B

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-void
.end method

.method public whitelist test-api reset()V
    .locals 1

    .line 59
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->buf:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    .line 62
    return-void
.end method
