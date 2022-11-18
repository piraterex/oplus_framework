.class Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;
.super Ljava/lang/Object;
.source "BEROctetString.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist counter:I

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    .line 144
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->counter:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->counter:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->-$$Nest$fgetocts(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

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

    .line 154
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->counter:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->-$$Nest$fgetocts(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->-$$Nest$fgetocts(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$2;->counter:I

    aget-object v0, v0, v1

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
