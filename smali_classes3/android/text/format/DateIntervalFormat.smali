.class public final Landroid/text/format/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static blacklist formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "startMs"    # J
    .param p2, "endMs"    # J
    .param p4, "flags"    # I
    .param p5, "olsonId"    # Ljava/lang/String;

    .line 52
    and-int/lit16 v0, p4, 0x2000

    if-eqz v0, :cond_0

    .line 53
    const-string p5, "UTC"

    .line 57
    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 58
    .local v0, "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v8

    .line 59
    .local v8, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v9

    .line 60
    .local v9, "icuLocale":Landroid/icu/util/ULocale;
    move-object v1, v9

    move-object v2, v8

    move-wide v3, p0

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateIntervalFormat;->formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;
    .locals 8
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "startMs"    # J
    .param p4, "endMs"    # J
    .param p6, "flags"    # I

    .line 70
    invoke-static {p1, p0, p2, p3}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, "startCalendar":Landroid/icu/util/Calendar;
    cmp-long v1, p2, p4

    if-nez v1, :cond_0

    .line 73
    move-object v1, v0

    .local v1, "endCalendar":Landroid/icu/util/Calendar;
    goto :goto_0

    .line 75
    .end local v1    # "endCalendar":Landroid/icu/util/Calendar;
    :cond_0
    invoke-static {p1, p0, p4, p5}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v1

    .line 87
    .restart local v1    # "endCalendar":Landroid/icu/util/Calendar;
    :goto_0
    invoke-static {v1}, Landroid/text/format/DateIntervalFormat;->isExactlyMidnight(Landroid/icu/util/Calendar;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 88
    and-int/lit8 v2, p6, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 89
    .local v2, "showTime":Z
    :goto_1
    invoke-static {v0, v1}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v5

    if-ne v5, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 91
    .local v4, "endsDayAfterStart":Z
    :goto_2
    if-nez v2, :cond_3

    cmp-long v5, p2, p4

    if-nez v5, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    .line 93
    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 94
    :cond_4
    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/icu/util/Calendar;->add(II)V

    .line 98
    .end local v2    # "showTime":Z
    .end local v4    # "endsDayAfterStart":Z
    :cond_5
    invoke-static {v0, v1, p6}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "skeleton":Ljava/lang/String;
    sget-object v4, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    monitor-enter v4

    .line 100
    nop

    .line 101
    :try_start_0
    invoke-static {v2, p0, p1}, Landroid/text/format/DateIntervalFormat;->getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v5

    .line 102
    .local v5, "formatter":Landroid/icu/text/DateIntervalFormat;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    .line 102
    return-object v3

    .line 104
    .end local v5    # "formatter":Landroid/icu/text/DateIntervalFormat;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static blacklist getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;
    .locals 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "icuTimeZone"    # Landroid/icu/util/TimeZone;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateIntervalFormat;

    .line 111
    .local v2, "formatter":Landroid/icu/text/DateIntervalFormat;
    if-eqz v2, :cond_0

    .line 112
    return-object v2

    .line 114
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v2

    .line 115
    invoke-virtual {v2, p2}, Landroid/icu/text/DateIntervalFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 116
    invoke-virtual {v1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object v2
.end method

.method private static blacklist isExactlyMidnight(Landroid/icu/util/Calendar;)Z
    .locals 1
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 121
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 122
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 123
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe

    .line 124
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0
.end method
