.class Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "CCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposedByteArrayOutputStream"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 464
    return-void
.end method


# virtual methods
.method public blacklist getBuffer()[B
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->buf:[B

    return-object v0
.end method
