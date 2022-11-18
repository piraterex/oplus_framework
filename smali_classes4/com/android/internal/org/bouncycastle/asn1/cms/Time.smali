.class public Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Time.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field blacklist time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 2
    .param p1, "time"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 56
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;)V
    .locals 6
    .param p1, "time"    # Ljava/util/Date;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 79
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 81
    .local v3, "dateF":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "year":I
    const/16 v4, 0x79e

    if-lt v1, v4, :cond_1

    const/16 v4, 0x801

    if-le v1, v4, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 94
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 6
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 108
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 112
    .local v0, "tz":Ljava/util/SimpleTimeZone;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 113
    .local v3, "dateF":Ljava/text/SimpleDateFormat;
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 116
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "d":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "year":I
    const/16 v4, 0x79e

    if-lt v1, v4, :cond_1

    const/16 v4, 0x801

    if-le v1, v4, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 129
    :goto_1
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Time;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 148
    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 156
    :cond_1
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

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

    .line 150
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;

    return-object v0
.end method


# virtual methods
.method public blacklist getDate()Ljava/util/Date;
    .locals 4

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

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

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getTime()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->getAdjustedTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Time;->time:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
