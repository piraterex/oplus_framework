.class public Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;
.super Ljava/lang/Object;
.source "BERApplicationSpecificParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field private final blacklist parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

.field private final blacklist tag:I


# direct methods
.method constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    .line 19
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->tag:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
