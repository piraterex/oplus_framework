.class Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;
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
.field blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    .line 120
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

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
    .locals 5

    .line 130
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->-$$Nest$fgetchunkSize(Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    .local v0, "length":I
    new-array v1, v0, [B

    .line 134
    .local v1, "chunk":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->this$0:Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString$1;->pos:I

    .line 136
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2

    .line 138
    .end local v0    # "length":I
    .end local v1    # "chunk":[B
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
