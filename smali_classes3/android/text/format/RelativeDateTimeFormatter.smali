.class public final Landroid/text/format/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;
    }
.end annotation


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

.field public static final blacklist DAY_IN_MILLIS:J = 0x5265c00L

.field private static final blacklist DAY_IN_MS:I = 0x5265c00

.field private static final blacklist EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final blacklist HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final blacklist MINUTE_IN_MILLIS:J = 0xea60L

.field public static final blacklist SECOND_IN_MILLIS:J = 0x3e8L

.field public static final blacklist WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final blacklist YEAR_IN_MILLIS:J = 0x7528ad000L


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-direct {v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;-><init>()V

    sput-object v0, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static blacklist dayDistance(Landroid/icu/util/TimeZone;JJ)I
    .locals 2
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 352
    invoke-static {p0, p3, p4}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v0

    invoke-static {p0, p1, p2}, Landroid/text/format/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static blacklist getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 340
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v1, v0}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RelativeDateTimeFormatter;

    .line 341
    .local v2, "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    if-nez v2, :cond_0

    .line 342
    const/4 v3, 0x0

    invoke-static {p0, v3, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v0, v2}, Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-object v2
.end method

.method public static blacklist getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;
    .locals 26
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "transitionResolution"    # J
    .param p10, "flags"    # I

    .line 263
    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    if-eqz p0, :cond_6

    .line 266
    if-eqz p1, :cond_5

    .line 269
    invoke-static/range {p0 .. p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v15

    .line 270
    .local v15, "icuLocale":Landroid/icu/util/ULocale;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v10

    .line 272
    .local v10, "icuTimeZone":Landroid/icu/util/TimeZone;
    sub-long v0, v13, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 274
    .local v16, "duration":J
    const-wide/32 v0, 0x240c8400

    cmp-long v0, p8, v0

    if-lez v0, :cond_0

    .line 275
    const-wide/32 v0, 0x240c8400

    move-wide/from16 v18, v0

    .end local p8    # "transitionResolution":J
    .local v0, "transitionResolution":J
    goto :goto_0

    .line 274
    .end local v0    # "transitionResolution":J
    .restart local p8    # "transitionResolution":J
    :cond_0
    move-wide/from16 v18, p8

    .line 278
    .end local p8    # "transitionResolution":J
    .local v18, "transitionResolution":J
    :goto_0
    const/high16 v0, 0xc0000

    and-int v0, p10, v0

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v9, v0

    .local v0, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    goto :goto_1

    .line 281
    .end local v0    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v9, v0

    .line 284
    .local v9, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :goto_1
    invoke-static {v10, v15, v11, v12}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v7

    .line 285
    .local v7, "timeCalendar":Landroid/icu/util/Calendar;
    invoke-static {v10, v15, v13, v14}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v8

    .line 287
    .local v8, "nowCalendar":Landroid/icu/util/Calendar;
    invoke-static {v7, v8}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 291
    .local v20, "days":I
    cmp-long v0, v16, v18

    const/4 v5, 0x1

    if-gez v0, :cond_3

    .line 295
    if-lez v20, :cond_2

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p6, v0

    if-gez v0, :cond_2

    .line 296
    const-wide/32 v0, 0x5265c00

    move-wide/from16 v21, v0

    .end local p6    # "minResolution":J
    .local v0, "minResolution":J
    goto :goto_2

    .line 298
    .end local v0    # "minResolution":J
    .restart local p6    # "minResolution":J
    :cond_2
    move-wide/from16 v21, p6

    .end local p6    # "minResolution":J
    .local v21, "minResolution":J
    :goto_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-object v1, v15

    move-object v2, v10

    move-wide/from16 v3, p2

    move v11, v5

    move-wide/from16 v5, p4

    move-object v12, v7

    move-object/from16 v23, v8

    .end local v7    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .local v12, "timeCalendar":Landroid/icu/util/Calendar;
    .local v23, "nowCalendar":Landroid/icu/util/Calendar;
    move-wide/from16 v7, v21

    move-object/from16 v24, v9

    .end local v9    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .local v24, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    move/from16 v9, p10

    move-object/from16 v25, v10

    .end local v10    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .local v25, "icuTimeZone":Landroid/icu/util/TimeZone;
    move-object v10, v0

    invoke-static/range {v1 .. v10}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    move/from16 v3, p10

    move-object v2, v0

    move-object/from16 v1, v23

    .local v0, "dateClause":Ljava/lang/String;
    goto :goto_4

    .line 303
    .end local v0    # "dateClause":Ljava/lang/String;
    .end local v12    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v21    # "minResolution":J
    .end local v23    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v24    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v25    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .restart local v7    # "timeCalendar":Landroid/icu/util/Calendar;
    .restart local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .restart local v9    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .restart local v10    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .restart local p6    # "minResolution":J
    :cond_3
    move v11, v5

    move-object v12, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v7    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v9    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v10    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .restart local v12    # "timeCalendar":Landroid/icu/util/Calendar;
    .restart local v23    # "nowCalendar":Landroid/icu/util/Calendar;
    .restart local v24    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .restart local v25    # "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {v12, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v23

    .end local v23    # "nowCalendar":Landroid/icu/util/Calendar;
    .local v1, "nowCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v1, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 305
    const v0, 0x20014

    .end local p10    # "flags":I
    .local v0, "flags":I
    goto :goto_3

    .line 308
    .end local v0    # "flags":I
    .restart local p10    # "flags":I
    :cond_4
    const v0, 0x10018

    .line 311
    .end local p10    # "flags":I
    .restart local v0    # "flags":I
    :goto_3
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-static {v15, v12, v0, v2}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v21, p6

    move v3, v0

    .line 315
    .end local v0    # "flags":I
    .end local p6    # "minResolution":J
    .local v2, "dateClause":Ljava/lang/String;
    .local v3, "flags":I
    .restart local v21    # "minResolution":J
    :goto_4
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {v15, v12, v11, v0}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "timeClause":Ljava/lang/String;
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 324
    .local v5, "capitalizationContext":Landroid/icu/text/DisplayContext;
    sget-object v6, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v6

    .line 325
    move-object/from16 v7, v24

    .end local v24    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .local v7, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :try_start_0
    invoke-static {v15, v7, v5}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v2, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v6

    .line 325
    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 267
    .end local v1    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v2    # "dateClause":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "timeClause":Ljava/lang/String;
    .end local v5    # "capitalizationContext":Landroid/icu/text/DisplayContext;
    .end local v7    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .end local v12    # "timeCalendar":Landroid/icu/util/Calendar;
    .end local v15    # "icuLocale":Landroid/icu/util/ULocale;
    .end local v16    # "duration":J
    .end local v18    # "transitionResolution":J
    .end local v20    # "days":I
    .end local v21    # "minResolution":J
    .end local v25    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .restart local p6    # "minResolution":J
    .restart local p8    # "transitionResolution":J
    .restart local p10    # "flags":I
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 24
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I
    .param p9, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p9

    sub-long v8, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 124
    .local v8, "duration":J
    cmp-long v0, v5, v3

    const/4 v10, 0x1

    if-ltz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 127
    .local v11, "past":Z
    const/high16 v0, 0xc0000

    and-int v0, p8, v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v12, v0

    .local v0, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    goto :goto_1

    .line 130
    .end local v0    # "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-object v12, v0

    .line 134
    .local v12, "style":Landroid/icu/text/RelativeDateTimeFormatter$Style;
    :goto_1
    if-eqz v11, :cond_2

    .line 135
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-object v13, v0

    .local v0, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    goto :goto_2

    .line 137
    .end local v0    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :cond_2
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-object v13, v0

    .line 143
    .local v13, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :goto_2
    const/4 v14, 0x1

    .line 146
    .local v14, "relative":Z
    const/4 v15, 0x0

    .line 148
    .local v15, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    const-wide/32 v16, 0xea60

    cmp-long v0, v8, v16

    if-gez v0, :cond_3

    cmp-long v0, p6, v16

    if-gez v0, :cond_3

    .line 149
    const-wide/16 v16, 0x3e8

    move-object/from16 v18, v13

    move/from16 v19, v14

    .end local v13    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v14    # "relative":Z
    .local v18, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .local v19, "relative":Z
    div-long v13, v8, v16

    long-to-int v0, v13

    .line 150
    .local v0, "count":I
    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move/from16 v16, v11

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    .local v10, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_6

    .line 148
    .end local v0    # "count":I
    .end local v10    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v18    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v19    # "relative":Z
    .restart local v13    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .restart local v14    # "relative":Z
    :cond_3
    move-object/from16 v18, v13

    move/from16 v19, v14

    .line 151
    .end local v13    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v14    # "relative":Z
    .restart local v18    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .restart local v19    # "relative":Z
    const-wide/32 v13, 0x36ee80

    cmp-long v0, v8, v13

    if-gez v0, :cond_4

    cmp-long v0, p6, v13

    if-gez v0, :cond_4

    .line 152
    div-long v13, v8, v16

    long-to-int v0, v13

    .line 153
    .restart local v0    # "count":I
    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move/from16 v16, v11

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    .restart local v10    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_6

    .line 154
    .end local v0    # "count":I
    .end local v10    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_4
    const-wide/32 v16, 0x5265c00

    cmp-long v0, v8, v16

    if-gez v0, :cond_5

    cmp-long v0, p6, v16

    if-gez v0, :cond_5

    .line 158
    div-long v13, v8, v13

    long-to-int v0, v13

    .line 159
    .restart local v0    # "count":I
    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move/from16 v16, v11

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    .restart local v10    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto/16 :goto_6

    .line 160
    .end local v0    # "count":I
    .end local v10    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_5
    const-wide/32 v13, 0x240c8400

    cmp-long v0, v8, v13

    if-gez v0, :cond_b

    cmp-long v0, p6, v13

    if-gez v0, :cond_b

    .line 161
    invoke-static/range {p1 .. p5}, Landroid/text/format/RelativeDateTimeFormatter;->dayDistance(Landroid/icu/util/TimeZone;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 162
    .local v13, "count":I
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 164
    .local v14, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    const/4 v0, 0x2

    if-ne v13, v0, :cond_8

    .line 172
    if-eqz v11, :cond_6

    .line 173
    sget-object v10, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v10

    .line 174
    :try_start_0
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v16, v11

    .end local v11    # "past":Z
    .local v16, "past":Z
    :try_start_1
    sget-object v11, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v14

    .end local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .local v17, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :try_start_2
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v11, v14}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "str":Ljava/lang/String;
    monitor-exit v10

    goto :goto_4

    .end local v0    # "str":Ljava/lang/String;
    .end local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v14

    .end local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    goto :goto_3

    .end local v16    # "past":Z
    .end local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    .restart local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :catchall_1
    move-exception v0

    move/from16 v16, v11

    move-object/from16 v17, v14

    .end local v11    # "past":Z
    .end local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v16    # "past":Z
    .restart local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :goto_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 179
    .end local v16    # "past":Z
    .end local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    .restart local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_6
    move/from16 v16, v11

    move-object/from16 v17, v14

    .end local v11    # "past":Z
    .end local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v16    # "past":Z
    .restart local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    sget-object v11, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v11

    .line 180
    :try_start_3
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v10, v14}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "str":Ljava/lang/String;
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 185
    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 186
    return-object v0

    .line 189
    .end local v0    # "str":Ljava/lang/String;
    :cond_7
    goto :goto_5

    .line 183
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 189
    .end local v16    # "past":Z
    .end local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    .restart local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    :cond_8
    move/from16 v16, v11

    move-object/from16 v17, v14

    .end local v11    # "past":Z
    .end local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v16    # "past":Z
    .restart local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    if-ne v13, v10, :cond_9

    .line 191
    sget-object v15, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 192
    const/4 v14, 0x0

    move-object v10, v15

    move-object/from16 v11, v18

    move-object/from16 v23, v17

    move/from16 v17, v14

    move-object/from16 v14, v23

    .end local v19    # "relative":Z
    .local v14, "relative":Z
    goto :goto_6

    .line 193
    .end local v14    # "relative":Z
    .restart local v19    # "relative":Z
    :cond_9
    if-nez v13, :cond_a

    .line 195
    sget-object v15, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 196
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    .line 197
    .end local v18    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .local v0, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    const/4 v14, 0x0

    move-object v11, v0

    move-object v10, v15

    move-object/from16 v23, v17

    move/from16 v17, v14

    move-object/from16 v14, v23

    .end local v19    # "relative":Z
    .restart local v14    # "relative":Z
    goto :goto_6

    .line 225
    .end local v0    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v14    # "relative":Z
    .restart local v18    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .restart local v19    # "relative":Z
    :cond_a
    :goto_5
    move-object v10, v15

    move-object/from16 v14, v17

    move-object/from16 v11, v18

    move/from16 v17, v19

    goto :goto_6

    .line 160
    .end local v13    # "count":I
    .end local v16    # "past":Z
    .end local v17    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .restart local v11    # "past":Z
    :cond_b
    move/from16 v16, v11

    .line 199
    .end local v11    # "past":Z
    .restart local v16    # "past":Z
    cmp-long v0, p6, v13

    if-nez v0, :cond_d

    .line 200
    div-long v10, v8, v13

    long-to-int v0, v10

    .line 201
    .local v0, "count":I
    sget-object v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    move v13, v0

    move-object v14, v10

    move-object v10, v15

    move-object/from16 v11, v18

    move/from16 v17, v19

    .line 225
    .end local v0    # "count":I
    .end local v15    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .end local v18    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v19    # "relative":Z
    .local v10, "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .local v11, "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .restart local v13    # "count":I
    .local v14, "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .local v17, "relative":Z
    :goto_6
    sget-object v20, Landroid/text/format/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Landroid/text/format/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v20

    .line 226
    nop

    .line 227
    :try_start_5
    invoke-static {v1, v12, v7}, Landroid/text/format/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 228
    .local v0, "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    if-eqz v17, :cond_c

    .line 229
    move-wide/from16 v21, v8

    .end local v8    # "duration":J
    .local v21, "duration":J
    int-to-double v8, v13

    :try_start_6
    invoke-virtual {v0, v8, v9, v11, v14}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object v8

    monitor-exit v20

    return-object v8

    .line 231
    .end local v21    # "duration":J
    .restart local v8    # "duration":J
    :cond_c
    move-wide/from16 v21, v8

    .end local v8    # "duration":J
    .restart local v21    # "duration":J
    invoke-virtual {v0, v11, v10}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v8

    monitor-exit v20

    return-object v8

    .line 233
    .end local v0    # "formatter":Landroid/icu/text/RelativeDateTimeFormatter;
    .end local v21    # "duration":J
    .restart local v8    # "duration":J
    :catchall_4
    move-exception v0

    move-wide/from16 v21, v8

    .end local v8    # "duration":J
    .restart local v21    # "duration":J
    :goto_7
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7

    .line 203
    .end local v10    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .end local v11    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .end local v13    # "count":I
    .end local v14    # "unit":Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .end local v17    # "relative":Z
    .end local v21    # "duration":J
    .restart local v8    # "duration":J
    .restart local v15    # "aunit":Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .restart local v18    # "direction":Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .restart local v19    # "relative":Z
    :cond_d
    move-wide/from16 v21, v8

    .end local v8    # "duration":J
    .restart local v21    # "duration":J
    invoke-static {v2, v1, v3, v4}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 212
    .local v0, "timeCalendar":Landroid/icu/util/Calendar;
    and-int/lit8 v8, p8, 0xc

    if-nez v8, :cond_f

    .line 213
    invoke-static {v2, v1, v5, v6}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v8

    .line 216
    .local v8, "nowCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v10

    if-eq v9, v10, :cond_e

    .line 217
    or-int/lit8 v9, p8, 0x4

    .end local p8    # "flags":I
    .local v9, "flags":I
    goto :goto_8

    .line 219
    .end local v9    # "flags":I
    .restart local p8    # "flags":I
    :cond_e
    or-int/lit8 v9, p8, 0x8

    .end local p8    # "flags":I
    .restart local v9    # "flags":I
    goto :goto_8

    .line 212
    .end local v8    # "nowCalendar":Landroid/icu/util/Calendar;
    .end local v9    # "flags":I
    .restart local p8    # "flags":I
    :cond_f
    move/from16 v9, p8

    .line 222
    .end local p8    # "flags":I
    .restart local v9    # "flags":I
    :goto_8
    invoke-static {v1, v0, v9, v7}, Landroid/text/format/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static blacklist getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;
    .locals 11
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I

    .line 98
    sget-object v10, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 100
    .local v10, "displayContext":Landroid/icu/text/DisplayContext;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 12
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "time"    # J
    .param p4, "now"    # J
    .param p6, "minResolution"    # J
    .param p8, "flags"    # I
    .param p9, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 106
    if-eqz p0, :cond_1

    .line 109
    if-eqz p1, :cond_0

    .line 112
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v10

    .line 113
    .local v10, "icuLocale":Landroid/icu/util/ULocale;
    invoke-static {p1}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v11

    .line 114
    .local v11, "icuTimeZone":Landroid/icu/util/TimeZone;
    move-object v0, v10

    move-object v1, v11

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    .end local v10    # "icuLocale":Landroid/icu/util/ULocale;
    .end local v11    # "icuTimeZone":Landroid/icu/util/TimeZone;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist julianDay(Landroid/icu/util/TimeZone;J)I
    .locals 4
    .param p0, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p1, "time"    # J

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 357
    .local v0, "utcMs":J
    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x253d8c    # 3.419992E-39f

    add-int/2addr v2, v3

    return v2
.end method
