.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
.super Ljava/lang/Object;
.source "ASN1TaggedObjectParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;


# virtual methods
.method public abstract blacklist getObjectParser(IZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getTagNo()I
.end method
