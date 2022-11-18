.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
.super Ljava/security/cert/CertificateException;
.source "CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExCertificateException"
.end annotation


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 449
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    .line 450
    invoke-direct {p0, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 452
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    .line 453
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 444
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 445
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    .line 446
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
