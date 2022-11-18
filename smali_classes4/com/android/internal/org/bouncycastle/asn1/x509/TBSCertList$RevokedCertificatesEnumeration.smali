.class Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokedCertificatesEnumeration"
.end annotation


# instance fields
.field private final blacklist en:Ljava/util/Enumeration;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V
    .locals 0
    .param p2, "en"    # Ljava/util/Enumeration;

    .line 116
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->this$0:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method
