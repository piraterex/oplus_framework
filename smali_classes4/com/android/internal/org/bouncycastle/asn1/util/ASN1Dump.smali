.class public Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;
.super Ljava/lang/Object;
.source "ASN1Dump.java"


# static fields
.field private static final blacklist SAMPLE_SIZE:I = 0x20

.field private static final blacklist TAB:Ljava/lang/String; = "    "


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist _dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    .locals 6
    .param p0, "indent"    # Ljava/lang/String;
    .param p1, "verbose"    # Z
    .param p2, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .line 64
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "nl":Ljava/lang/String;
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const-string v2, "NULL"

    const-string v3, "    "

    if-eqz v1, :cond_6

    .line 67
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 68
    .local v1, "e":Ljava/util/Enumeration;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    instance-of v4, p2, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    if-eqz v4, :cond_0

    .line 73
    const-string v4, "BER Sequence"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :cond_0
    instance-of v4, p2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    if-eqz v4, :cond_1

    .line 77
    const-string v4, "DER Sequence"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 81
    :cond_1
    const-string v4, "Sequence"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 90
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_4

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    instance-of v5, v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v5, :cond_3

    .line 98
    move-object v5, v4

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-static {v3, p1, v5, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    goto :goto_3

    .line 102
    :cond_3
    move-object v5, v4

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v3, p1, v5, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    goto :goto_3

    .line 92
    :cond_4
    :goto_2
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .end local v4    # "o":Ljava/lang/Object;
    :goto_3
    goto :goto_1

    .line 105
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "tab":Ljava/lang/String;
    :cond_5
    goto/16 :goto_b

    .line 106
    :cond_6
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_9

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    instance-of v2, p2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v2, :cond_7

    .line 113
    const-string v2, "BER Tagged ["

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 117
    :cond_7
    const-string v2, "Tagged ["

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :goto_4
    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 122
    .local v2, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const/16 v3, 0x5d

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v3

    if-nez v3, :cond_8

    .line 127
    const-string v3, " IMPLICIT "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_8
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v1, p1, v3, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 133
    .end local v1    # "tab":Ljava/lang/String;
    .end local v2    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    goto/16 :goto_b

    .line 134
    :cond_9
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_f

    .line 136
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 137
    .local v1, "e":Ljava/util/Enumeration;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .restart local v3    # "tab":Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    instance-of v4, p2, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    if-eqz v4, :cond_a

    .line 143
    const-string v4, "BER Set"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 145
    :cond_a
    instance-of v4, p2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    if-eqz v4, :cond_b

    .line 147
    const-string v4, "DER Set"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 151
    :cond_b
    const-string v4, "Set"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :goto_5
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 157
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 159
    .restart local v4    # "o":Ljava/lang/Object;
    if-nez v4, :cond_c

    .line 161
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 165
    :cond_c
    instance-of v5, v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v5, :cond_d

    .line 167
    move-object v5, v4

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-static {v3, p1, v5, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 171
    :cond_d
    move-object v5, v4

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v3, p1, v5, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 173
    .end local v4    # "o":Ljava/lang/Object;
    :goto_7
    goto :goto_6

    .line 174
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "tab":Ljava/lang/String;
    :cond_e
    goto/16 :goto_b

    .line 175
    :cond_f
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const-string v2, "] "

    if-eqz v1, :cond_12

    .line 177
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 179
    .local v1, "oct":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    if-eqz v3, :cond_10

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BER Constructed Octet String["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 185
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DER Octet String["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :goto_8
    if-eqz p1, :cond_11

    .line 189
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 193
    :cond_11
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .end local v1    # "oct":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :goto_9
    goto/16 :goto_b

    .line 196
    :cond_12
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, ")"

    if-eqz v1, :cond_13

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ObjectIdentifier("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 200
    :cond_13
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_14

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Boolean("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 204
    :cond_14
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_15

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Integer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 208
    :cond_15
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_17

    .line 210
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 211
    .local v1, "bt":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DER Bit String["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    if-eqz p1, :cond_16

    .line 214
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 218
    :cond_16
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    .end local v1    # "bt":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    :goto_a
    goto/16 :goto_b

    .line 221
    :cond_17
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    const-string v2, ") "

    if-eqz v1, :cond_18

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "IA5String("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 225
    :cond_18
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_19

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "UTF8String("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 229
    :cond_19
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v1, :cond_1a

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "PrintableString("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 233
    :cond_1a
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;

    if-eqz v1, :cond_1b

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "VisibleString("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 237
    :cond_1b
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v1, :cond_1c

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "BMPString("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 241
    :cond_1c
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    if-eqz v1, :cond_1d

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "T61String("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 245
    :cond_1d
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;

    if-eqz v1, :cond_1e

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "GraphicString("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERGraphicString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 249
    :cond_1e
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;

    if-eqz v1, :cond_1f

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "VideotexString("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERVideotexString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 253
    :cond_1f
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v1, :cond_20

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "UTCTime("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 257
    :cond_20
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_21

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "GeneralizedTime("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 261
    :cond_21
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecific;

    if-eqz v1, :cond_22

    .line 263
    const-string v1, "BER"

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 265
    :cond_22
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_23

    .line 267
    const-string v1, "DER"

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 269
    :cond_23
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;

    if-eqz v1, :cond_24

    .line 271
    const-string v1, ""

    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b

    .line 273
    :cond_24
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v1, :cond_25

    .line 275
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    .line 276
    .local v1, "en":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DER Enumerated("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    .end local v1    # "en":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    goto/16 :goto_b

    .line 278
    :cond_25
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    if-eqz v1, :cond_29

    .line 280
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    .line 281
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "External "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "tab":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getDirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Direct Reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getDirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_26
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getIndirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Indirect Reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getIndirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :cond_27
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getDataValueDescriptor()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 293
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getDataValueDescriptor()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v2, p1, v3, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 295
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getEncoding()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getExternalContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v2, p1, v3, p3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 297
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .end local v2    # "tab":Ljava/lang/String;
    goto :goto_b

    .line 300
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    :goto_b
    return-void
.end method

.method private static blacklist calculateAscString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 408
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v0, "buf":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-eq v1, v2, :cond_1

    .line 412
    aget-byte v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 414
    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist dumpAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dumpAsString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "verbose"    # Z

    .line 353
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v0, "buf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 357
    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-static {v2, p1, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 359
    :cond_0
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1

    .line 361
    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v2, p1, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    .line 368
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 365
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist dumpBinaryDataAsString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .param p0, "indent"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 373
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "nl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .local v1, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 381
    array-length v4, p1

    sub-int/2addr v4, v2

    const/16 v5, 0x20

    if-le v4, v5, :cond_0

    .line 383
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-static {p1, v2, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-static {p1, v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 391
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    array-length v4, p1

    sub-int/2addr v4, v2

    .local v4, "j":I
    :goto_1
    if-eq v4, v5, :cond_1

    .line 395
    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 397
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-static {p1, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->calculateAscString([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :goto_2
    add-int/lit8 v2, v2, 0x20

    goto :goto_0

    .line 403
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist outputApplicationSpecific(Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "verbose"    # Z
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "nl"    # Ljava/lang/String;

    .line 306
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object v0

    .line 307
    .local v0, "app":Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed()Z

    move-result v2

    const-string v3, " ApplicationSpecific["

    if-eqz v2, :cond_1

    .line 313
    const/16 v2, 0x10

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 314
    .local v2, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-static {v4, p2, v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->_dumpAsString(Ljava/lang/String;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v2    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_0
    goto :goto_1

    .line 320
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 324
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 327
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
