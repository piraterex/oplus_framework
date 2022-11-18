.class public final Landroid/text/format/DateUtilsBridge;
.super Ljava/lang/Object;
.source "DateUtilsBridge.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p2, "timeInMillis"    # J

    .line 67
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 68
    .local v0, "calendar":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 69
    return-object v0
.end method

.method public static blacklist dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 2
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 158
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private static blacklist fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 182
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3
    .param p0, "c1"    # Landroid/icu/util/Calendar;
    .param p1, "c2"    # Landroid/icu/util/Calendar;

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 177
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 178
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 176
    :goto_1
    return v0
.end method

.method public static blacklist icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;

    .line 57
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 58
    .local v0, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->freeze()Landroid/icu/util/TimeZone;

    .line 59
    return-object v0
.end method

.method public static blacklist isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z
    .locals 1
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 168
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isThisYear(Landroid/icu/util/Calendar;)Z
    .locals 4
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 190
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 191
    .local v0, "now":Landroid/icu/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist onTheHour(Landroid/icu/util/Calendar;)Z
    .locals 1
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 172
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Landroid/icu/util/Calendar;
    .param p1, "flags"    # I

    .line 73
    invoke-static {p0, p0, p1}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .param p0, "startCalendar"    # Landroid/icu/util/Calendar;
    .param p1, "endCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "flags"    # I

    .line 77
    const/high16 v0, 0x80000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 78
    const v0, 0x1c000

    or-int/2addr p2, v0

    .line 81
    :cond_0
    const-string v0, "MMMM"

    .line 82
    .local v0, "monthPart":Ljava/lang/String;
    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 83
    const-string v0, "M"

    goto :goto_0

    .line 84
    :cond_1
    const/high16 v1, 0x10000

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 85
    const-string v0, "MMM"

    .line 88
    :cond_2
    :goto_0
    const-string v1, "EEEE"

    .line 89
    .local v1, "weekPart":Ljava/lang/String;
    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    .line 90
    const-string v1, "EEE"

    .line 93
    :cond_3
    const-string/jumbo v2, "j"

    .line 94
    .local v2, "timePart":Ljava/lang/String;
    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_4

    .line 95
    const-string v2, "H"

    goto :goto_1

    .line 96
    :cond_4
    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_5

    .line 97
    const-string/jumbo v2, "h"

    .line 103
    :cond_5
    :goto_1
    and-int/lit16 v3, p2, 0x4000

    const-string/jumbo v4, "m"

    if-eqz v3, :cond_8

    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_6

    goto :goto_2

    .line 108
    :cond_6
    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 109
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 104
    :cond_8
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_9
    :goto_3
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 114
    or-int/lit8 p2, p2, 0x10

    .line 117
    :cond_a
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_b

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_b

    .line 118
    and-int/lit8 p2, p2, -0x3

    .line 119
    and-int/lit8 p2, p2, -0x2

    .line 122
    :cond_b
    and-int/lit8 v3, p2, 0x13

    if-nez v3, :cond_c

    .line 123
    or-int/lit8 p2, p2, 0x10

    .line 127
    :cond_c
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_10

    .line 128
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_d

    goto :goto_4

    .line 130
    :cond_d
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_e

    goto :goto_4

    .line 133
    :cond_e
    invoke-static {p0, p1}, Landroid/text/format/DateUtilsBridge;->fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {p0}, Landroid/text/format/DateUtilsBridge;->isThisYear(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 134
    :cond_f
    or-int/lit8 p2, p2, 0x4

    .line 138
    :cond_10
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v3, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v4, p2, 0x30

    if-eqz v4, :cond_12

    .line 140
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_11

    .line 141
    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_12

    .line 145
    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_12
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_13

    .line 149
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_13
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_14

    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
