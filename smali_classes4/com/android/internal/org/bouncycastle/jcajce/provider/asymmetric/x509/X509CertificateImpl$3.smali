.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;
.super Ljava/lang/Object;
.source "X509CertificateImpl.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;

.field final synthetic blacklist val$sigProvider:Ljava/security/Provider;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/security/Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;

    .line 618
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;->val$sigProvider:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .param p1, "sigName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;->val$sigProvider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    .line 624
    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 628
    :cond_0
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
