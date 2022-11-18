.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .locals 6
    .param p1, "name1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 20
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 21
    .local v0, "rdns1":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 23
    .local v1, "rdns2":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 25
    return v4

    .line 28
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 30
    aget-object v3, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    return v4

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method
