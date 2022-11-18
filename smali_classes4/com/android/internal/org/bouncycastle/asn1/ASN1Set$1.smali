.class Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 307
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->pos:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 2

    .line 312
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->pos:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .locals 3

    .line 317
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->pos:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;->pos:I

    aget-object v0, v0, v1

    return-object v0

    .line 321
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
