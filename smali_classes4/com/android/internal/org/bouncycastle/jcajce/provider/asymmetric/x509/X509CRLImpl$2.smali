.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

.field final synthetic blacklist val$sigProvider:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    .line 201
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;->val$sigProvider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .param p1, "sigName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;->val$sigProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
