.class public Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV4Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV4Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedSigner"
.end annotation


# instance fields
.field public final blacklist apkDigest:[B

.field public final blacklist certs:[Ljava/security/cert/Certificate;

.field public final blacklist contentDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>([Ljava/security/cert/Certificate;[BLjava/util/Map;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .param p2, "apkDigest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 224
    .local p3, "contentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->certs:[Ljava/security/cert/Certificate;

    .line 226
    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->apkDigest:[B

    .line 227
    iput-object p3, p0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 228
    return-void
.end method
