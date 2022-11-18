.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1UTCTime.java"


# instance fields
.field private blacklist time:[B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .line 129
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyMMddHHmmss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 134
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 149
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 152
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyMMddHHmmss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 153
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 156
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    .line 159
    return-void
.end method

.method constructor blacklist <init>([B)V
    .locals 2
    .param p1, "time"    # [B

    .line 163
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 164
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 168
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal characters in UTCTime string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTCTime string too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;
    .locals 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 89
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    if-nez p1, :cond_1

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v1

    .line 91
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 53
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 62
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    .line 55
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    return-object v0
.end method

.method private blacklist isDigit(I)Z
    .locals 2
    .param p1, "pos"    # I

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-byte v0, v0, p1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 313
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    const/16 v1, 0x17

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 308
    return-void
.end method

.method blacklist encodedLength()I
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    array-length v0, v0

    .line 302
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public blacklist getAdjustedDate()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMddHHmmssz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 206
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->epochAdjust(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAdjustedTime()Ljava/lang/String;
    .locals 3

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "d":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-ge v1, v2, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "19"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyMMddHHmmssz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->epochAdjust(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getTime()Ljava/lang/String;
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "stime":Ljava/lang/String;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x2b

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-gez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00GMT+00:00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 247
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 248
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 252
    :cond_2
    move-object v2, v0

    .line 254
    .local v2, "d":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    if-ne v1, v3, :cond_3

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "00"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    :cond_3
    const-string v3, ":"

    const/16 v7, 0xf

    if-ne v1, v6, :cond_4

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "00GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 265
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method blacklist isConstructed()Z
    .locals 1

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
