.class Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
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
    name = "EmptyEnumeration"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;->this$0:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .locals 2

    .line 141
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Empty Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
