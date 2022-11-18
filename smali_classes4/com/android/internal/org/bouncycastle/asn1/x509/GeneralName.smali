.class public Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "GeneralName.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final blacklist dNSName:I = 0x2

.field public static final blacklist directoryName:I = 0x4

.field public static final blacklist ediPartyName:I = 0x5

.field public static final blacklist iPAddress:I = 0x7

.field public static final blacklist otherName:I = 0x0

.field public static final blacklist registeredID:I = 0x8

.field public static final blacklist rfc822Name:I = 0x1

.field public static final blacklist uniformResourceIdentifier:I = 0x6

.field public static final blacklist x400Address:I = 0x3


# instance fields
.field private blacklist obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field private blacklist tag:I


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "name"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 114
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 146
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 152
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1

    .line 154
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1

    .line 158
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 160
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->toGeneralNameEncoding(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    .local v0, "enc":[B
    if-eqz v0, :cond_3

    .line 163
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 169
    .end local v0    # "enc":[B
    goto :goto_1

    .line 167
    .restart local v0    # "enc":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IP Address is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v0    # "enc":[B
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process String for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_5
    :goto_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 174
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "dirName"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 79
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "dirName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 73
    return-void
.end method

.method private blacklist copyInts([I[BI)V
    .locals 3
    .param p1, "parsedIp"    # [I
    .param p2, "addr"    # [B
    .param p3, "offSet"    # I

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 372
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 373
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .locals 1
    .param p0, "tagObj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 232
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 179
    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 184
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 187
    .local v0, "tagObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    .line 189
    .local v1, "tag":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :pswitch_0
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 204
    :pswitch_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 202
    :pswitch_2
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 199
    :pswitch_3
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 194
    :pswitch_4
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 213
    .end local v0    # "tagObj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v1    # "tag":I
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 217
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unable to parse encoded general name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist parseIPv4(Ljava/lang/String;[BI)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "offset"    # I

    .line 347
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "./"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v0, "sTok":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 350
    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    add-int/2addr v1, p3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    move v1, v2

    goto :goto_0

    .line 354
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-void
.end method

.method private blacklist parseIPv4Mask(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "mask"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "offset"    # I

    .line 337
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, "maskVal":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 341
    div-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p3

    aget-byte v3, p2, v2

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist parseIPv6(Ljava/lang/String;)[I
    .locals 12
    .param p1, "ip"    # Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    .local v0, "sTok":Ljava/util/StringTokenizer;
    const/4 v3, 0x0

    .line 381
    .local v3, "index":I
    const/16 v4, 0x8

    new-array v5, v4, [I

    .line 383
    .local v5, "val":[I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 388
    :cond_0
    const/4 v2, -0x1

    .line 390
    .local v2, "doubleColon":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 392
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "e":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 396
    move v2, v3

    .line 397
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    aput v6, v5, v3

    move v3, v8

    goto :goto_1

    .line 401
    .end local v8    # "index":I
    .restart local v3    # "index":I
    :cond_1
    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_3

    .line 403
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .restart local v8    # "index":I
    const/16 v9, 0x10

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    aput v9, v5, v3

    .line 404
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 417
    .end local v7    # "e":Ljava/lang/String;
    :cond_2
    move v3, v8

    goto :goto_1

    .line 411
    .end local v8    # "index":I
    .restart local v3    # "index":I
    .restart local v7    # "e":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, "."

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v8, "eTok":Ljava/util/StringTokenizer;
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "index":I
    .local v9, "index":I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/2addr v10, v4

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v10, v11

    aput v10, v5, v3

    .line 414
    add-int/lit8 v3, v9, 0x1

    .end local v9    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/2addr v10, v4

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v10, v11

    aput v10, v5, v9

    .line 417
    .end local v7    # "e":Ljava/lang/String;
    .end local v8    # "eTok":Ljava/util/StringTokenizer;
    :goto_1
    goto :goto_0

    .line 419
    :cond_4
    array-length v1, v5

    if-eq v3, v1, :cond_5

    .line 421
    array-length v1, v5

    sub-int v4, v3, v2

    sub-int/2addr v1, v4

    sub-int v4, v3, v2

    invoke-static {v5, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    move v1, v2

    .local v1, "i":I
    :goto_2
    array-length v4, v5

    sub-int v7, v3, v2

    sub-int/2addr v4, v7

    if-eq v1, v4, :cond_5

    .line 424
    aput v6, v5, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 428
    .end local v1    # "i":I
    :cond_5
    return-object v5
.end method

.method private blacklist parseMask(Ljava/lang/String;)[I
    .locals 7
    .param p1, "mask"    # Ljava/lang/String;

    .line 358
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 359
    .local v0, "res":[I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, "maskVal":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, v1, :cond_0

    .line 363
    div-int/lit8 v3, v2, 0x10

    aget v4, v0, v3

    rem-int/lit8 v5, v2, 0x10

    rsub-int/lit8 v5, v5, 0xf

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist toGeneralNameEncoding(Ljava/lang/String;)[B
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;

    .line 269
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 300
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 304
    .local v0, "slashIndex":I
    const/4 v1, 0x4

    if-gez v0, :cond_3

    .line 306
    new-array v1, v1, [B

    .line 308
    .local v1, "addr":[B
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    .line 310
    return-object v1

    .line 314
    .end local v1    # "addr":[B
    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 316
    .local v3, "addr":[B
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    .line 318
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "mask":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_4

    .line 321
    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    goto :goto_1

    .line 325
    :cond_4
    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4Mask(Ljava/lang/String;[BI)V

    .line 328
    :goto_1
    return-object v3

    .line 271
    .end local v0    # "slashIndex":I
    .end local v2    # "mask":Ljava/lang/String;
    .end local v3    # "addr":[B
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 273
    .restart local v0    # "slashIndex":I
    const/16 v1, 0x10

    if-gez v0, :cond_6

    .line 275
    new-array v1, v1, [B

    .line 276
    .restart local v1    # "addr":[B
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v3

    .line 277
    .local v3, "parsedIp":[I
    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 279
    return-object v1

    .line 283
    .end local v1    # "addr":[B
    .end local v3    # "parsedIp":[I
    :cond_6
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 284
    .local v3, "addr":[B
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v4

    .line 285
    .local v4, "parsedIp":[I
    invoke-direct {p0, v4, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 286
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2    # "mask":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_7

    .line 289
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v4

    goto :goto_3

    .line 293
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->parseMask(Ljava/lang/String;)[I

    move-result-object v4

    .line 295
    :goto_3
    invoke-direct {p0, v4, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    .line 297
    return-object v3
.end method


# virtual methods
.method public blacklist getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getTagNo()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 434
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 436
    .local v1, "explicit":Z
    :goto_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v2, v1, v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 250
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 262
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    nop

    .line 264
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
