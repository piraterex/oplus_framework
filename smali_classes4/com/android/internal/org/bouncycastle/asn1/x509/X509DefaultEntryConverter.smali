.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;
.super Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.source "X509DefaultEntryConverter.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameEntryConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getConvertedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;->convertHexEncoded(Ljava/lang/String;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 50
    :cond_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_3
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 65
    :cond_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 52
    :cond_6
    :goto_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
