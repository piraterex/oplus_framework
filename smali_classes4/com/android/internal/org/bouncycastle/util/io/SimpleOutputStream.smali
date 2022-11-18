.class public abstract Lcom/android/internal/org/bouncycastle/util/io/SimpleOutputStream;
.super Ljava/io/OutputStream;
.source "SimpleOutputStream.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 14
    return-void
.end method

.method public whitelist test-api flush()V
    .locals 0

    .line 18
    return-void
.end method

.method public whitelist test-api write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 23
    .local v1, "buf":[B
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/internal/org/bouncycastle/util/io/SimpleOutputStream;->write([BII)V

    .line 24
    return-void
.end method
